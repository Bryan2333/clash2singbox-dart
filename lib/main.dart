import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/parser/parse_proxy.dart';
import 'package:clash2singbox_dart/utils/fetch_subscription.dart';
import 'package:clash2singbox_dart/utils/generate_config.dart';
import 'dart:io';

void main(List<String> args) async {
  if (args.isEmpty) {
    print("请提供参数");
    return;
  }

  var configPath = "";
  final subscriptionGroup = <MapEntry<String, String>>[];

  for (final arg in args) {
    if (arg.startsWith('--sub=')) {
      final pair = arg.substring('--sub='.length);
      final separatorIndex = pair.indexOf('=');
      if (separatorIndex != -1) {
        final name = pair.substring(0, separatorIndex);
        final url = pair.substring(separatorIndex + 1);
        subscriptionGroup.add(MapEntry(name, url));
      }
    } else if (arg.startsWith('--config=')) {
      configPath = arg.substring('--config='.length);
    }
  }

  if (configPath.isEmpty) {
    print("请指定输出配置文件路径");
    return;
  }

  final unconvertSubscription = <(String, List<BaseClashBean>)>[];
  final convertedSubscription = <(String, List<BaseSingboxBean>)>[];

  for (final sub in subscriptionGroup) {
    try {
      final fetchedSubscription = await fetchSubscription(sub);
      if (fetchedSubscription != null) {
        final name = fetchedSubscription.$1;
        final proxyList = fetchedSubscription.$2;

        unconvertSubscription.add((name, proxyList));
      } else {
        print("订阅 ${sub.key} 获取失败");
      }
    } catch (e) {
      print("订阅 ${sub.key} 获取异常：$e");
    }
  }

  for (final sub in unconvertSubscription) {
    try {
      final convertedProxies =
          sub.$2.map((proxy) => convertProxy(proxy)).toList();
      convertedSubscription.add((sub.$1, convertedProxies));
    } catch (e) {
      print("转换 ${sub.$1} 订阅异常：$e");
    }
  }

  try {
    final configJsonString = generateConfig(convertedSubscription);
    final configFile = File(configPath);
    if (!configFile.existsSync()) {
      configFile.createSync(recursive: true);
    }
    configFile.writeAsStringSync(configJsonString!, mode: FileMode.write);
  } catch (e) {
    print("写入配置文件失败: $e");
  }
}
