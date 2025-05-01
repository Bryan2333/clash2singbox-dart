// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_clash_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportClashBean _$TransportClashBeanFromJson(Map<String, dynamic> json) =>
    TransportClashBean()
      ..network = json['network'] as String?
      ..h2Opts = json['h2-opts'] == null
          ? null
          : H2Options.fromJson(json['h2-opts'] as Map<String, dynamic>)
      ..wsOpts = json['ws-opts'] == null
          ? null
          : WSOptions.fromJson(json['ws-opts'] as Map<String, dynamic>)
      ..grpcOpts = json['grpc-opts'] == null
          ? null
          : GrpcOptions.fromJson(json['grpc-opts'] as Map<String, dynamic>);

Map<String, dynamic> _$TransportClashBeanToJson(TransportClashBean instance) =>
    <String, dynamic>{
      'network': instance.network,
      'h2-opts': instance.h2Opts,
      'ws-opts': instance.wsOpts,
      'grpc-opts': instance.grpcOpts,
    };

H2Options _$H2OptionsFromJson(Map<String, dynamic> json) => H2Options(
      host: (json['host'] as List<dynamic>?)?.map((e) => e as String).toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$H2OptionsToJson(H2Options instance) => <String, dynamic>{
      'host': instance.host,
      'path': instance.path,
    };

WSOptions _$WSOptionsFromJson(Map<String, dynamic> json) => WSOptions(
      path: json['path'] as String?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      maxEarlyData: json['max-early-data'] as String?,
    );

Map<String, dynamic> _$WSOptionsToJson(WSOptions instance) => <String, dynamic>{
      'path': instance.path,
      'headers': instance.headers,
      'max-early-data': instance.maxEarlyData,
    };

GrpcOptions _$GrpcOptionsFromJson(Map<String, dynamic> json) => GrpcOptions(
      grpcServiceName: json['grpc-service-name'] as String?,
    );

Map<String, dynamic> _$GrpcOptionsToJson(GrpcOptions instance) =>
    <String, dynamic>{
      'grpc-service-name': instance.grpcServiceName,
    };
