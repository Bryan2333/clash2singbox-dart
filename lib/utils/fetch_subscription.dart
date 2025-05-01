import 'dart:convert';
import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/shadowsocks_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/trojan_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/vless_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/vmess_clash_bean.dart';
import 'package:http/http.dart' as http;
import 'package:yaml/yaml.dart';

Future<(String, List<BaseClashBean>)?> fetchSubscription(
    MapEntry<String, String> subscription) async {
  try {
    final response = await http.get(Uri.parse(subscription.value));

    if (response.statusCode == 200) {
      final yamlString = response.body;
      final jsonString = jsonEncode(loadYaml(yamlString));
      final jsonMap = Map<String, dynamic>.from(jsonDecode(jsonString));

      if (jsonMap['proxies'] != null) {
        final proxyList = (jsonMap['proxies'] as List).map((proxy) {
          final map = Map<String, dynamic>.from(proxy);

          return switch (map['type']) {
            "vmess" => VmessClashBean.fromJson(map),
            "vless" => VlessClashBean.fromJson(map),
            "ss" => ShadowsocksClashBean.fromJson(map),
            "trojan" => TrojanClashBean.fromJson(map),
            _ => BaseClashBean()
          };
        }).toList();

        return (subscription.key, proxyList.cast<BaseClashBean>());
      } else {
        return (subscription.key, <BaseClashBean>[]);
      }
    }
  } catch (e) {
    print("获取订阅信息失败：$e");
    return null;
  }
  return null;
}
