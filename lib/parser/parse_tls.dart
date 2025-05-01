import 'package:clash2singbox_dart/bean/clash/base_clash_bean.dart';
import 'package:clash2singbox_dart/bean/clash/tls_clash_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/tls_singbox_bean.dart';

TlsSingboxBean? convertTls(TlsClashBean bean) {
  final newBean = TlsSingboxBean();

  newBean.enabled = bean.tls ?? true;
  newBean.insecure = bean.skipCertVerify ?? false;
  newBean.alpn = bean.alpn;

  if (bean.clientFingerprint?.isNotEmpty ?? false) {
    final utlsBean = UtlsSingboxBean();
    utlsBean.enabled = true;
    utlsBean.fingerprint = bean.clientFingerprint;
    newBean.utls = utlsBean;
  }

  if (bean.sni?.isNotEmpty ?? false) {
    newBean.serverName = bean.sni;
  } else if (bean.servername?.isNotEmpty ?? false) {
    newBean.serverName = bean.servername;
  } else {
    newBean.serverName = (bean as BaseClashBean).server;
  }

  return newBean;
}
