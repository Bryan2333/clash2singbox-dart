// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_singbox_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportSingboxBean _$TransportSingboxBeanFromJson(
        Map<String, dynamic> json) =>
    TransportSingboxBean(
      type: json['type'] as String,
      serviceName: json['service_name'] as String?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      hosts:
          (json['hosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
      path: json['path'] as String?,
      maxEarlyData: (json['max_early_data'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TransportSingboxBeanToJson(
        TransportSingboxBean instance) =>
    <String, dynamic>{
      'type': instance.type,
      if (instance.serviceName case final value?) 'service_name': value,
      if (instance.headers case final value?) 'headers': value,
      if (instance.hosts case final value?) 'hosts': value,
      if (instance.path case final value?) 'path': value,
      if (instance.maxEarlyData case final value?) 'max_early_data': value,
    };
