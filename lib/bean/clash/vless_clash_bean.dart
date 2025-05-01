import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/tls_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/transport_clash_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vless_clash_bean.g.dart';

@JsonSerializable()
class VlessClashBean extends BaseClashBean with TransportClashBean, TlsClashBean {
  @override
  String get type => 'vless';

  late String uuid;
  late String flow;

  VlessClashBean();

  factory VlessClashBean.fromJson(Map<String, dynamic> json) =>
      _$VlessClashBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VlessClashBeanToJson(this);
}