import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'selector_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false)
class SelectorSingboxBean extends BaseSingboxBean {
  @override
  String get type => "selector";

  @JsonKey(name: "default")
  String? defaultOutbound;

  SelectorSingboxBean();

  factory SelectorSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$SelectorSingboxBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SelectorSingboxBeanToJson(this);
}