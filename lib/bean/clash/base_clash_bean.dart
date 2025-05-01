import 'package:json_annotation/json_annotation.dart';

part 'base_clash_bean.g.dart';

@JsonSerializable()
class BaseClashBean {
  late String type;
  late String name;
  late String server;
  late int port;
  late bool? udp;

  BaseClashBean();

  factory BaseClashBean.fromJson(Map<String, dynamic> json) =>
      _$BaseClashBeanFromJson(json);

  Map<String, dynamic> toJson() => _$BaseClashBeanToJson(this);
}