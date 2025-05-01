import 'package:json_annotation/json_annotation.dart';

part 'transport_clash_bean.g.dart';

@JsonSerializable()
mixin class TransportClashBean {
  String? network;

  @JsonKey(name: "h2-opts")
  H2Options? h2Opts;

  @JsonKey(name: "ws-opts")
  WSOptions? wsOpts;

  @JsonKey(name: "grpc-opts")
  GrpcOptions? grpcOpts;

  TransportClashBean();

  factory TransportClashBean.fromJson(Map<String, dynamic> json) =>
      _$TransportClashBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TransportClashBeanToJson(this);
}

@JsonSerializable()
class H2Options {
  final List<String>? host;
  final String? path;

  H2Options({this.host, this.path});

  factory H2Options.fromJson(Map<String, dynamic> json) =>
      _$H2OptionsFromJson(json);

  Map<String, dynamic> toJson() => _$H2OptionsToJson(this);
}

@JsonSerializable()
class WSOptions {
  final String? path;
  final Map<String, String>? headers;
  @JsonKey(name: "max-early-data")
  final String? maxEarlyData;

  WSOptions({this.path, this.headers, this.maxEarlyData});

  factory WSOptions.fromJson(Map<String, dynamic> json) =>
      _$WSOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$WSOptionsToJson(this);
}

@JsonSerializable()
class GrpcOptions {
  @JsonKey(name: "grpc-service-name")
  final String? grpcServiceName;

  GrpcOptions({this.grpcServiceName});

  factory GrpcOptions.fromJson(Map<String, dynamic> json) =>
      _$GrpcOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$GrpcOptionsToJson(this);
}
