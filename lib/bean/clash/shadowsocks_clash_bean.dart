import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shadowsocks_clash_bean.g.dart';

@JsonSerializable()
class ShadowsocksClashBean extends BaseClashBean {
  @override
  String get type => "ss";

  late String password;

  late String cipher;

  ShadowsocksClashBean();

  factory ShadowsocksClashBean.fromJson(Map<String, dynamic> json) =>
      _$ShadowsocksClashBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ShadowsocksClashBeanToJson(this);
}