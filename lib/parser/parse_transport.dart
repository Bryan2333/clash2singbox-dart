import 'package:clash2singbox_dart/bean/clash/transport_clash_bean.dart';
import 'package:clash2singbox_dart/bean/singbox/transport_singbox_bean.dart';

TransportSingboxBean? convertTransport(TransportClashBean bean) {
  return switch (bean.network) {
    "grpc" => convertGrpcOption(bean),
    "ws" => convertWsOption(bean),
    "h2" => convertH2Option(bean),
    _ => null,
  };
}

TransportSingboxBean? convertGrpcOption(TransportClashBean bean) {
  final newBean = TransportSingboxBean(type: "grpc");

  if (bean.grpcOpts?.grpcServiceName?.isNotEmpty ?? false) {
    newBean.serviceName = bean.grpcOpts?.grpcServiceName;
  }

  return newBean;
}

TransportSingboxBean? convertWsOption(TransportClashBean bean) {
  final newBean = TransportSingboxBean(type: "ws");

  final uri = Uri.parse(bean.wsOpts?.path ?? "");
  newBean.path = uri.path;

  final edValue = uri.queryParameters['ed'];
  newBean.maxEarlyData = edValue != null ? int.tryParse(edValue) : null;

  newBean.headers = bean.wsOpts?.headers;

  return newBean;
}

TransportSingboxBean? convertH2Option(TransportClashBean bean) {
  final newBean = TransportSingboxBean(type: "http");

  newBean.path = bean.h2Opts?.path;

  return newBean;
}
