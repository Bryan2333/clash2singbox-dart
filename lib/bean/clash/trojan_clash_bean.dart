import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/tls_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/transport_clash_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trojan_clash_bean.g.dart';

@JsonSerializable()
class TrojanClashBean extends BaseClashBean with TransportClashBean, TlsClashBean {
  @override
  String get type => "trojan";

  late String password;

  TrojanClashBean();

  factory TrojanClashBean.fromJson(Map<String, dynamic> json) =>
      _$TrojanClashBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TrojanClashBeanToJson(this);
}