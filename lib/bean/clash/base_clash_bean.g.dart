// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_clash_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseClashBean _$BaseClashBeanFromJson(Map<String, dynamic> json) =>
    BaseClashBean()
      ..type = json['type'] as String
      ..name = json['name'] as String
      ..server = json['server'] as String
      ..port = (json['port'] as num).toInt()
      ..udp = json['udp'] as bool?;

Map<String, dynamic> _$BaseClashBeanToJson(BaseClashBean instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'server': instance.server,
      'port': instance.port,
      'udp': instance.udp,
    };
