import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/shadowsocks_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/trojan_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/vless_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/vmess_clash_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/shadowsocks_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/trojan_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/vless_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/vmess_singbox_bean.dart';
import 'package:clash2singbox_dart/parser/parse_tls.dart';
import 'package:clash2singbox_dart/parser/parse_transport.dart';

BaseSingboxBean convertProxy(BaseClashBean bean) {
  return switch (bean.type) {
    "ss" => convertShadowsocks(bean as ShadowsocksClashBean),
    "vmess" => convertVmess(bean as VmessClashBean),
    "vless" => convertVless(bean as VlessClashBean),
    "trojan" => convertTrojan(bean as TrojanClashBean),
    _ => BaseSingboxBean(),
  };
}

VmessSingboxBean convertVmess(VmessClashBean bean) {
  return VmessSingboxBean()
    ..tag = bean.name
    ..server = bean.server
    ..serverPort = bean.port > 65535 ? 1024 : bean.port
    ..uuid = bean.uuid
    ..security = bean.cipher
    ..alterId = bean.alterId
    ..network = bean.udp == true ? null : "tcp"
    ..transport = convertTransport(bean)
    ..tls = convertTls(bean);
}

VlessSingboxBean convertVless(VlessClashBean bean) {
  return VlessSingboxBean()
    ..tag = bean.name
    ..server = bean.server
    ..serverPort = bean.port > 65535 ? 1024 : bean.port
    ..uuid = bean.uuid
    ..flow = bean.flow
    ..network = bean.udp == true ? null : "tcp"
    ..transport = convertTransport(bean)
    ..tls = convertTls(bean);
}

TrojanSingboxBean convertTrojan(TrojanClashBean bean) {
  return TrojanSingboxBean()
    ..tag = bean.name
    ..server = bean.server
    ..serverPort = bean.port > 65535 ? 1024 : bean.port
    ..password = bean.password
    ..network = bean.udp == true ? null : "tcp"
    ..transport = convertTransport(bean)
    ..tls = convertTls(bean);
}

ShadowsocksSingboxBean convertShadowsocks(ShadowsocksClashBean bean) {
  return ShadowsocksSingboxBean()
    ..tag = bean.name
    ..server = bean.server
    ..serverPort = bean.port > 65535 ? 1024 : bean.port
    ..password = bean.password
    ..method = bean.cipher
    ..network = bean.udp == true ? null : "tcp";
}
