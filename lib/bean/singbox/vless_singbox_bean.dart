import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vless_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class VlessSingboxBean extends BaseSingboxBean {
  @override
  String get type => "vless";

  late String uuid;
  late String flow;
  String? packetEncoding;

  VlessSingboxBean();

  factory VlessSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$VlessSingboxBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VlessSingboxBeanToJson(this);
}
