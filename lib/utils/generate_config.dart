import 'dart:convert';
import 'dart:io';

import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/selector_singbox_bean.dart';
import 'package:clash2singbox_dart/config/config_model_bean.dart';
import 'package:embed_annotation/embed_annotation.dart';

part 'generate_config.g.dart';

@EmbedBinary("../config/config.example.json", base64: true)
const exampleString = _$exampleString;

final example = jsonDecode(utf8.decode(base64Decode(exampleString)));

final eol = Platform.lineTerminator;

String? generateConfig(List<(String, List<BaseSingboxBean>)>? subscriptions) {
  try {
    final exampleBean = ConfigModelBean.fromJson(example);
    final selectOutbound = exampleBean.outbounds
        .firstWhere((outbound) => outbound.tag == 'select');

    subscriptions?.forEach((subscription) {
      final subscriptionName = subscription.$1;

      final newProxyNames = subscription.$2.map((proxy) => proxy.tag).toList();

      exampleBean.outbounds.add(BaseSingboxBean.fromJson({
        'type': 'selector',
        'tag': subscriptionName,
        'outbounds': newProxyNames,
      }));

      exampleBean.outbounds.addAll(subscription.$2);

      selectOutbound.outbounds?.add(subscriptionName);
    });

    exampleBean.outbounds.add(SelectorSingboxBean.fromJson({
      'type': 'selector',
      'tag': '动画疯',
      'outbounds': exampleBean.outbounds
          .where((outbound) =>
              !RegExp(r'selector|dns-out', caseSensitive: false)
                  .hasMatch(outbound.type) &&
              RegExp(r'TW|Taiwan|香港|台湾|HK|Hong Kong', caseSensitive: false)
                  .hasMatch(outbound.tag))
          .map((outbound) => outbound.tag)
          .toList(),
    }));

    return JsonEncoder.withIndent('  ').convert(exampleBean.toJson()) + eol;
  } catch (e) {
    print("生成配置文件失败：$e");
  }

  return null;
}
