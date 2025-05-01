import 'package:json_annotation/json_annotation.dart';

part 'tls_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class TlsSingboxBean {
  bool? enabled;
  bool? insecure;
  String? serverName;
  List<String>? alpn;
  UtlsSingboxBean? utls;

  TlsSingboxBean({
    this.enabled,
    this.insecure,
    this.serverName,
    this.alpn,
    this.utls,
  });

  factory TlsSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$TlsSingboxBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TlsSingboxBeanToJson(this);
}

@JsonSerializable()
class UtlsSingboxBean {
  bool? enabled;
  String? fingerprint;

  UtlsSingboxBean({
    this.enabled,
    this.fingerprint,
  });

  factory UtlsSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$UtlsSingboxBeanFromJson(json);
  
  Map<String, dynamic> toJson() => _$UtlsSingboxBeanToJson(this);
}
