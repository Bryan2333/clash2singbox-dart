import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/tls_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/transport_clash_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vmess_clash_bean.g.dart';

@JsonSerializable()
class VmessClashBean extends BaseClashBean with TransportClashBean, TlsClashBean {
  @override
  String get type => "vmess";

  late String uuid;
  late int alterId;
  late String cipher;

  VmessClashBean();

  factory VmessClashBean.fromJson(Map<String, dynamic> json) =>
      _$VmessClashBeanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VmessClashBeanToJson(this);
}
