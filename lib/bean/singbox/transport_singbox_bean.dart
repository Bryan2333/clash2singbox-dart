import 'package:json_annotation/json_annotation.dart';

part 'transport_singbox_bean.g.dart';

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class TransportSingboxBean {
  late String type;
  String? serviceName; // grpc;
  Map<String, String>? headers; // ws
  List<String>? hosts; // h2
  String? path; // h2 ws
  int? maxEarlyData; // ws

  TransportSingboxBean({
    required this.type,
    this.serviceName,
    this.headers,
    this.hosts,
    this.path,
    this.maxEarlyData,
  });

  factory TransportSingboxBean.fromJson(Map<String, dynamic> json) =>
      _$TransportSingboxBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TransportSingboxBeanToJson(this);
}
