import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trojan_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class TrojanSingboxBean extends BaseSingboxBean {
  @override
  String get type => "trojan";

  late String password;

  TrojanSingboxBean();

  factory TrojanSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$TrojanSingboxBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TrojanSingboxBeanToJson(this);
}