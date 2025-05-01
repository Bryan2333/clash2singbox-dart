// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vmess_clash_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VmessClashBean _$VmessClashBeanFromJson(Map<String, dynamic> json) =>
    VmessClashBean()
      ..tls = json['tls'] as bool?
      ..network = json['network'] as String?
      ..sni = json['sni'] as String?
      ..name = json['name'] as String
      ..servername = json['servername'] as String?
      ..server = json['server'] as String
      ..fingerprint = json['fingerprint'] as String?
      ..port = (json['port'] as num).toInt()
      ..h2Opts = json['h2-opts'] == null
          ? null
          : H2Options.fromJson(json['h2-opts'] as Map<String, dynamic>)
      ..udp = json['udp'] as bool?
      ..alpn =
          (json['alpn'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..wsOpts = json['ws-opts'] == null
          ? null
          : WSOptions.fromJson(json['ws-opts'] as Map<String, dynamic>)
      ..clientFingerprint = json['client-fingerprint'] as String?
      ..grpcOpts = json['grpc-opts'] == null
          ? null
          : GrpcOptions.fromJson(json['grpc-opts'] as Map<String, dynamic>)
      ..skipCertVerify = json['skip-cert-verify'] as bool?
      ..type = json['type'] as String
      ..uuid = json['uuid'] as String
      ..alterId = (json['alterId'] as num).toInt()
      ..cipher = json['cipher'] as String;

Map<String, dynamic> _$VmessClashBeanToJson(VmessClashBean instance) =>
    <String, dynamic>{
      'tls': instance.tls,
      'network': instance.network,
      'sni': instance.sni,
      'name': instance.name,
      'servername': instance.servername,
      'server': instance.server,
      'fingerprint': instance.fingerprint,
      'port': instance.port,
      'h2-opts': instance.h2Opts,
      'udp': instance.udp,
      'alpn': instance.alpn,
      'ws-opts': instance.wsOpts,
      'client-fingerprint': instance.clientFingerprint,
      'grpc-opts': instance.grpcOpts,
      'skip-cert-verify': instance.skipCertVerify,
      'type': instance.type,
      'uuid': instance.uuid,
      'alterId': instance.alterId,
      'cipher': instance.cipher,
    };
