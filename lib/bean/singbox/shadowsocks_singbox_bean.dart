import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shadowsocks_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false)
class ShadowsocksSingboxBean extends BaseSingboxBean {
  @override
  String get type => "shadowsocks";

  late String method;
  late String password;

  ShadowsocksSingboxBean();

  factory ShadowsocksSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$ShadowsocksSingboxBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ShadowsocksSingboxBeanToJson(this);
}