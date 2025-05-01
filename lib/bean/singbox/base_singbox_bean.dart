import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_singbox_bean.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class BaseSingboxBean {
  late String type;
  late String tag;
  List<String>? outbounds;
  String? server;
  @JsonKey(name: 'server_port')
  int? serverPort;
  String? network;
  TlsSingboxBean? tls;
  TransportSingboxBean? transport;

  BaseSingboxBean();

  factory BaseSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$BaseSingboxBeanFromJson(json);

  Map<String, dynamic> toJson() => _$BaseSingboxBeanToJson(this);
}
