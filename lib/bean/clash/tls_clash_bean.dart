import 'package:json_annotation/json_annotation.dart';

part 'tls_clash_bean.g.dart';

@JsonSerializable()
mixin class TlsClashBean {
  bool? tls;
  String? sni;
  String? servername;
  String? fingerprint;
  List<String>? alpn;
  @JsonKey(name: "client-fingerprint")
  String? clientFingerprint;
  @JsonKey(name: "skip-cert-verify")
  bool? skipCertVerify;

  TlsClashBean();

  factory TlsClashBean.fromJson(Map<String, dynamic> json) =>
      _$TlsClashBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TlsClashBeanToJson(this);
}
