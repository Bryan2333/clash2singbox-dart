import 'package:clash2singbox_dart/bean/singbox/base_singbox_bean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'config_model_bean.g.dart';

@JsonSerializable(includeIfNull: false)
class LogConfig {
  final bool disabled;
  final String level;
  final String output;
  final bool timestamp;

  LogConfig({
    required this.disabled,
    required this.level,
    required this.output,
    required this.timestamp,
  });

  factory LogConfig.fromJson(Map<String, dynamic> json) =>
      _$LogConfigFromJson(json);

  Map<String, dynamic> toJson() => _$LogConfigToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ExperimentalConfig {
  final ClashApi clashApi;
  final CacheFile cacheFile;

  ExperimentalConfig({
    required this.clashApi,
    required this.cacheFile,
  });

  factory ExperimentalConfig.fromJson(Map<String, dynamic> json) =>
      _$ExperimentalConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ExperimentalConfigToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ClashApi {
  final String externalController;
  final String externalUi;
  final String secret;
  final String defaultMode;

  ClashApi({
    required this.externalController,
    required this.externalUi,
    required this.secret,
    required this.defaultMode,
  });

  factory ClashApi.fromJson(Map<String, dynamic> json) =>
      _$ClashApiFromJson(json);

  Map<String, dynamic> toJson() => _$ClashApiToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CacheFile {
  final bool enabled;
  final bool storeFakeip;

  CacheFile({
    required this.enabled,
    required this.storeFakeip,
  });

  factory CacheFile.fromJson(Map<String, dynamic> json) =>
      _$CacheFileFromJson(json);

  Map<String, dynamic> toJson() => _$CacheFileToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
mixin class CommonRule {
  String? action;
  List<CommonRule>? rules;
  dynamic ruleSet;
  dynamic network;
  dynamic protocol;
  dynamic inbound;
  dynamic outbound;
  dynamic port;
  dynamic domain;
  dynamic domainKeyword;
  dynamic domainRegex;
  dynamic queryType;
  String? clashMode;
  bool? ipIsPrivate;
  bool? invert;
  String? type;
  String? mode;

  CommonRule();

  factory CommonRule.fromJson(Map<String, dynamic> json) =>
      _$CommonRuleFromJson(json);

  Map<String, dynamic> toJson() => _$CommonRuleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DnsRule with CommonRule {
  late String server;
  late bool? disableCache;
  late int? rewriteTtl;
  late String? clientSubnet;

  DnsRule();

  factory DnsRule.fromJson(Map<String, dynamic> json) =>
      _$DnsRuleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DnsRuleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DnsConfig {
  final List<DnsServer> servers;
  final List<DnsRule> rules;
  @JsonKey(name: "final")
  final String finalServer;
  final String? strategy;
  final bool? disableCache;
  final bool disableExpire;
  final bool? independentCache;
  final bool? reverseMapping;
  final Fakeip? fakeip;

  DnsConfig({
    required this.servers,
    required this.rules,
    required this.finalServer,
    this.strategy,
    this.disableCache,
    required this.disableExpire,
    this.independentCache,
    this.reverseMapping,
    this.fakeip,
  });

  factory DnsConfig.fromJson(Map<String, dynamic> json) =>
      _$DnsConfigFromJson(json);

  Map<String, dynamic> toJson() => _$DnsConfigToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class DnsServer {
  final String tag;
  final String address;
  final String? detour;
  final String? strategy;
  final String? addressResolver;
  final String? addressStrategy;

  DnsServer({
    required this.tag,
    required this.address,
    this.detour,
    this.strategy,
    this.addressResolver,
    this.addressStrategy,
  });

  factory DnsServer.fromJson(Map<String, dynamic> json) =>
      _$DnsServerFromJson(json);

  Map<String, dynamic> toJson() => _$DnsServerToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Fakeip {
  final bool enabled;
  final String? inet4Range;
  final String? inet6Range;

  Fakeip({
    required this.enabled,
    this.inet4Range,
    this.inet6Range,
  });

  factory Fakeip.fromJson(Map<String, dynamic> json) => _$FakeipFromJson(json);

  Map<String, dynamic> toJson() => _$FakeipToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Inbound {
  final String type;
  final String tag;
  final String listen;
  final int listenPort;
  final bool? sniff;

  Inbound({
    required this.type,
    required this.tag,
    required this.listen,
    required this.listenPort,
    this.sniff,
  });

  factory Inbound.fromJson(Map<String, dynamic> json) =>
      _$InboundFromJson(json);

  Map<String, dynamic> toJson() => _$InboundToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class RouteRule with CommonRule {
  RouteRule();

  factory RouteRule.fromJson(Map<String, dynamic> json) =>
      _$RouteRuleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RouteRuleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class RouteConfig {
  final List<RouteRule> rules;
  final List<RuleSet>? ruleSet;
  @JsonKey(name: "final")
  final String? finalServer;

  RouteConfig({
    required this.rules,
    this.ruleSet,
    this.finalServer,
  });

  factory RouteConfig.fromJson(Map<String, dynamic> json) =>
      _$RouteConfigFromJson(json);

  Map<String, dynamic> toJson() => _$RouteConfigToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class RuleSet {
  final String tag;
  final String type;
  final String format;
  final String url;
  final String? downloadDetour;

  RuleSet({
    required this.tag,
    required this.type,
    required this.format,
    required this.url,
    this.downloadDetour,
  });

  factory RuleSet.fromJson(Map<String, dynamic> json) =>
      _$RuleSetFromJson(json);

  Map<String, dynamic> toJson() => _$RuleSetToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ConfigModelBean {
  final LogConfig log;
  final ExperimentalConfig experimental;
  final DnsConfig dns;
  final List<BaseSingboxBean> outbounds;
  final List<Inbound> inbounds;
  final RouteConfig route;

  ConfigModelBean({
    required this.log,
    required this.experimental,
    required this.dns,
    required this.outbounds,
    required this.inbounds,
    required this.route,
  });

  factory ConfigModelBean.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigModelBeanToJson(this);
}
