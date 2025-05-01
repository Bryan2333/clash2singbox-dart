// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tls_singbox_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TlsSingboxBean _$TlsSingboxBeanFromJson(Map<String, dynamic> json) =>
    TlsSingboxBean(
      enabled: json['enabled'] as bool?,
      insecure: json['insecure'] as bool?,
      serverName: json['server_name'] as String?,
      alpn: (json['alpn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      utls: json['utls'] == null
          ? null
          : UtlsSingboxBean.fromJson(json['utls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TlsSingboxBeanToJson(TlsSingboxBean instance) =>
    <String, dynamic>{
      if (instance.enabled case final value?) 'enabled': value,
      if (instance.insecure case final value?) 'insecure': value,
      if (instance.serverName case final value?) 'server_name': value,
      if (instance.alpn case final value?) 'alpn': value,
      if (instance.utls case final value?) 'utls': value,
    };

UtlsSingboxBean _$UtlsSingboxBeanFromJson(Map<String, dynamic> json) =>
    UtlsSingboxBean(
      enabled: json['enabled'] as bool?,
      fingerprint: json['fingerprint'] as String?,
    );

Map<String, dynamic> _$UtlsSingboxBeanToJson(UtlsSingboxBean instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'fingerprint': instance.fingerprint,
    };
