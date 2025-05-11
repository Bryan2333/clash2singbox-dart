import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:json_annotation/json_annotation.dart';

mixin TlsClashBean on BaseClashBean {
  bool? tls;
  String? sni;
  String? servername;
  String? fingerprint;
  List<String>? alpn;
  @JsonKey(name: "client-fingerprint")
  String? clientFingerprint;
  @JsonKey(name: "skip-cert-verify")
  bool? skipCertVerify;
}
