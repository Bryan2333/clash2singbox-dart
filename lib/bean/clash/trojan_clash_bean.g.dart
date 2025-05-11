// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trojan_clash_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrojanClashBean _$TrojanClashBeanFromJson(Map<String, dynamic> json) =>
    TrojanClashBean()
      ..name = json['name'] as String
      ..server = json['server'] as String
      ..port = (json['port'] as num).toInt()
      ..udp = json['udp'] as bool?
      ..tls = json['tls'] as bool?
      ..sni = json['sni'] as String?
      ..servername = json['servername'] as String?
      ..network = json['network'] as String?
      ..fingerprint = json['fingerprint'] as String?
      ..alpn =
          (json['alpn'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..h2Opts = json['h2-opts'] == null
          ? null
          : H2Options.fromJson(json['h2-opts'] as Map<String, dynamic>)
      ..clientFingerprint = json['client-fingerprint'] as String?
      ..wsOpts = json['ws-opts'] == null
          ? null
          : WSOptions.fromJson(json['ws-opts'] as Map<String, dynamic>)
      ..grpcOpts = json['grpc-opts'] == null
          ? null
          : GrpcOptions.fromJson(json['grpc-opts'] as Map<String, dynamic>)
      ..skipCertVerify = json['skip-cert-verify'] as bool?
      ..type = json['type'] as String
      ..password = json['password'] as String;

Map<String, dynamic> _$TrojanClashBeanToJson(TrojanClashBean instance) =>
    <String, dynamic>{
      'name': instance.name,
      'server': instance.server,
      'port': instance.port,
      'udp': instance.udp,
      'tls': instance.tls,
      'sni': instance.sni,
      'servername': instance.servername,
      'network': instance.network,
      'fingerprint': instance.fingerprint,
      'alpn': instance.alpn,
      'h2-opts': instance.h2Opts,
      'client-fingerprint': instance.clientFingerprint,
      'ws-opts': instance.wsOpts,
      'grpc-opts': instance.grpcOpts,
      'skip-cert-verify': instance.skipCertVerify,
      'type': instance.type,
      'password': instance.password,
    };
