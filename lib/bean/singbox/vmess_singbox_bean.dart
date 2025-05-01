import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vmess_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class VmessSingboxBean extends BaseSingboxBean {
  @override
  String get type => "vmess";

  late String uuid;
  late String security;
  late int alterId;

  VmessSingboxBean();

  factory VmessSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$VmessSingboxBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VmessSingboxBeanToJson(this);
}
