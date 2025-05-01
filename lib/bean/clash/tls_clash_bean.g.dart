// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tls_clash_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TlsClashBean _$TlsClashBeanFromJson(Map<String, dynamic> json) => TlsClashBean()
  ..tls = json['tls'] as bool?
  ..sni = json['sni'] as String?
  ..servername = json['servername'] as String?
  ..fingerprint = json['fingerprint'] as String?
  ..alpn = (json['alpn'] as List<dynamic>?)?.map((e) => e as String).toList()
  ..clientFingerprint = json['client-fingerprint'] as String?
  ..skipCertVerify = json['skip-cert-verify'] as bool?;

Map<String, dynamic> _$TlsClashBeanToJson(TlsClashBean instance) =>
    <String, dynamic>{
      'tls': instance.tls,
      'sni': instance.sni,
      'servername': instance.servername,
      'fingerprint': instance.fingerprint,
      'alpn': instance.alpn,
      'client-fingerprint': instance.clientFingerprint,
      'skip-cert-verify': instance.skipCertVerify,
    };
