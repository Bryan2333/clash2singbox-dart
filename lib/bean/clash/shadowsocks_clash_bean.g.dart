// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shadowsocks_clash_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShadowsocksClashBean _$ShadowsocksClashBeanFromJson(
        Map<String, dynamic> json) =>
    ShadowsocksClashBean()
      ..name = json['name'] as String
      ..server = json['server'] as String
      ..port = (json['port'] as num).toInt()
      ..udp = json['udp'] as bool?
      ..type = json['type'] as String
      ..password = json['password'] as String
      ..cipher = json['cipher'] as String;

Map<String, dynamic> _$ShadowsocksClashBeanToJson(
        ShadowsocksClashBean instance) =>
    <String, dynamic>{
      'name': instance.name,
      'server': instance.server,
      'port': instance.port,
      'udp': instance.udp,
      'type': instance.type,
      'password': instance.password,
      'cipher': instance.cipher,
    };
