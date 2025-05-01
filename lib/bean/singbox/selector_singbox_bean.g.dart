// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selector_singbox_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectorSingboxBean _$SelectorSingboxBeanFromJson(Map<String, dynamic> json) =>
    SelectorSingboxBean()
      ..tag = json['tag'] as String
      ..outbounds = (json['outbounds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..server = json['server'] as String?
      ..serverPort = (json['server_port'] as num?)?.toInt()
      ..network = json['network'] as String?
      ..tls = json['tls'] == null
          ? null
          : TlsSingboxBean.fromJson(json['tls'] as Map<String, dynamic>)
      ..transport = json['transport'] == null
          ? null
          : TransportSingboxBean.fromJson(
              json['transport'] as Map<String, dynamic>)
      ..type = json['type'] as String
      ..defaultOutbound = json['default'] as String?;

Map<String, dynamic> _$SelectorSingboxBeanToJson(
        SelectorSingboxBean instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      if (instance.outbounds case final value?) 'outbounds': value,
      if (instance.server case final value?) 'server': value,
      if (instance.serverPort case final value?) 'server_port': value,
      if (instance.network case final value?) 'network': value,
      if (instance.tls case final value?) 'tls': value,
      if (instance.transport case final value?) 'transport': value,
      'type': instance.type,
      if (instance.defaultOutbound case final value?) 'default': value,
    };
