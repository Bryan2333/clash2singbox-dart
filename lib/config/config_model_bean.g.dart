// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogConfig _$LogConfigFromJson(Map<String, dynamic> json) => LogConfig(
      disabled: json['disabled'] as bool,
      level: json['level'] as String,
      output: json['output'] as String,
      timestamp: json['timestamp'] as bool,
    );

Map<String, dynamic> _$LogConfigToJson(LogConfig instance) => <String, dynamic>{
      'disabled': instance.disabled,
      'level': instance.level,
      'output': instance.output,
      'timestamp': instance.timestamp,
    };

ExperimentalConfig _$ExperimentalConfigFromJson(Map<String, dynamic> json) =>
    ExperimentalConfig(
      clashApi: ClashApi.fromJson(json['clash_api'] as Map<String, dynamic>),
      cacheFile: CacheFile.fromJson(json['cache_file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExperimentalConfigToJson(ExperimentalConfig instance) =>
    <String, dynamic>{
      'clash_api': instance.clashApi,
      'cache_file': instance.cacheFile,
    };

ClashApi _$ClashApiFromJson(Map<String, dynamic> json) => ClashApi(
      externalController: json['external_controller'] as String,
      externalUi: json['external_ui'] as String,
      secret: json['secret'] as String,
      defaultMode: json['default_mode'] as String,
    );

Map<String, dynamic> _$ClashApiToJson(ClashApi instance) => <String, dynamic>{
      'external_controller': instance.externalController,
      'external_ui': instance.externalUi,
      'secret': instance.secret,
      'default_mode': instance.defaultMode,
    };

CacheFile _$CacheFileFromJson(Map<String, dynamic> json) => CacheFile(
      enabled: json['enabled'] as bool,
      storeFakeip: json['store_fakeip'] as bool,
    );

Map<String, dynamic> _$CacheFileToJson(CacheFile instance) => <String, dynamic>{
      'enabled': instance.enabled,
      'store_fakeip': instance.storeFakeip,
    };

CommonRule _$CommonRuleFromJson(Map<String, dynamic> json) => CommonRule()
  ..action = json['action'] as String?
  ..rules = (json['rules'] as List<dynamic>?)
      ?.map((e) => CommonRule.fromJson(e as Map<String, dynamic>))
      .toList()
  ..ruleSet = json['rule_set']
  ..network = json['network']
  ..protocol = json['protocol']
  ..inbound = json['inbound']
  ..outbound = json['outbound']
  ..port = json['port']
  ..domain = json['domain']
  ..domainKeyword = json['domain_keyword']
  ..domainRegex = json['domain_regex']
  ..queryType = json['query_type']
  ..clashMode = json['clash_mode'] as String?
  ..ipIsPrivate = json['ip_is_private'] as bool?
  ..invert = json['invert'] as bool?
  ..type = json['type'] as String?
  ..mode = json['mode'] as String?;

Map<String, dynamic> _$CommonRuleToJson(CommonRule instance) =>
    <String, dynamic>{
      if (instance.action case final value?) 'action': value,
      if (instance.rules case final value?) 'rules': value,
      if (instance.ruleSet case final value?) 'rule_set': value,
      if (instance.network case final value?) 'network': value,
      if (instance.protocol case final value?) 'protocol': value,
      if (instance.inbound case final value?) 'inbound': value,
      if (instance.outbound case final value?) 'outbound': value,
      if (instance.port case final value?) 'port': value,
      if (instance.domain case final value?) 'domain': value,
      if (instance.domainKeyword case final value?) 'domain_keyword': value,
      if (instance.domainRegex case final value?) 'domain_regex': value,
      if (instance.queryType case final value?) 'query_type': value,
      if (instance.clashMode case final value?) 'clash_mode': value,
      if (instance.ipIsPrivate case final value?) 'ip_is_private': value,
      if (instance.invert case final value?) 'invert': value,
      if (instance.type case final value?) 'type': value,
      if (instance.mode case final value?) 'mode': value,
    };

DnsRule _$DnsRuleFromJson(Map<String, dynamic> json) => DnsRule()
  ..action = json['action'] as String?
  ..rules = (json['rules'] as List<dynamic>?)
      ?.map((e) => CommonRule.fromJson(e as Map<String, dynamic>))
      .toList()
  ..ruleSet = json['rule_set']
  ..network = json['network']
  ..protocol = json['protocol']
  ..inbound = json['inbound']
  ..outbound = json['outbound']
  ..port = json['port']
  ..domain = json['domain']
  ..domainKeyword = json['domain_keyword']
  ..domainRegex = json['domain_regex']
  ..queryType = json['query_type']
  ..clashMode = json['clash_mode'] as String?
  ..ipIsPrivate = json['ip_is_private'] as bool?
  ..invert = json['invert'] as bool?
  ..type = json['type'] as String?
  ..mode = json['mode'] as String?
  ..server = json['server'] as String
  ..disableCache = json['disable_cache'] as bool?
  ..rewriteTtl = (json['rewrite_ttl'] as num?)?.toInt()
  ..clientSubnet = json['client_subnet'] as String?;

Map<String, dynamic> _$DnsRuleToJson(DnsRule instance) => <String, dynamic>{
      if (instance.action case final value?) 'action': value,
      if (instance.rules case final value?) 'rules': value,
      if (instance.ruleSet case final value?) 'rule_set': value,
      if (instance.network case final value?) 'network': value,
      if (instance.protocol case final value?) 'protocol': value,
      if (instance.inbound case final value?) 'inbound': value,
      if (instance.outbound case final value?) 'outbound': value,
      if (instance.port case final value?) 'port': value,
      if (instance.domain case final value?) 'domain': value,
      if (instance.domainKeyword case final value?) 'domain_keyword': value,
      if (instance.domainRegex case final value?) 'domain_regex': value,
      if (instance.queryType case final value?) 'query_type': value,
      if (instance.clashMode case final value?) 'clash_mode': value,
      if (instance.ipIsPrivate case final value?) 'ip_is_private': value,
      if (instance.invert case final value?) 'invert': value,
      if (instance.type case final value?) 'type': value,
      if (instance.mode case final value?) 'mode': value,
      'server': instance.server,
      if (instance.disableCache case final value?) 'disable_cache': value,
      if (instance.rewriteTtl case final value?) 'rewrite_ttl': value,
      if (instance.clientSubnet case final value?) 'client_subnet': value,
    };

DnsConfig _$DnsConfigFromJson(Map<String, dynamic> json) => DnsConfig(
      servers: (json['servers'] as List<dynamic>)
          .map((e) => DnsServer.fromJson(e as Map<String, dynamic>))
          .toList(),
      rules: (json['rules'] as List<dynamic>)
          .map((e) => DnsRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      finalServer: json['final'] as String,
      strategy: json['strategy'] as String?,
      disableCache: json['disable_cache'] as bool?,
      disableExpire: json['disable_expire'] as bool,
      independentCache: json['independent_cache'] as bool?,
      reverseMapping: json['reverse_mapping'] as bool?,
      fakeip: json['fakeip'] == null
          ? null
          : Fakeip.fromJson(json['fakeip'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DnsConfigToJson(DnsConfig instance) => <String, dynamic>{
      'servers': instance.servers,
      'rules': instance.rules,
      'final': instance.finalServer,
      if (instance.strategy case final value?) 'strategy': value,
      if (instance.disableCache case final value?) 'disable_cache': value,
      'disable_expire': instance.disableExpire,
      if (instance.independentCache case final value?)
        'independent_cache': value,
      if (instance.reverseMapping case final value?) 'reverse_mapping': value,
      if (instance.fakeip case final value?) 'fakeip': value,
    };

DnsServer _$DnsServerFromJson(Map<String, dynamic> json) => DnsServer(
      tag: json['tag'] as String,
      address: json['address'] as String,
      detour: json['detour'] as String?,
      strategy: json['strategy'] as String?,
      addressResolver: json['address_resolver'] as String?,
      addressStrategy: json['address_strategy'] as String?,
    );

Map<String, dynamic> _$DnsServerToJson(DnsServer instance) => <String, dynamic>{
      'tag': instance.tag,
      'address': instance.address,
      if (instance.detour case final value?) 'detour': value,
      if (instance.strategy case final value?) 'strategy': value,
      if (instance.addressResolver case final value?) 'address_resolver': value,
      if (instance.addressStrategy case final value?) 'address_strategy': value,
    };

Fakeip _$FakeipFromJson(Map<String, dynamic> json) => Fakeip(
      enabled: json['enabled'] as bool,
      inet4Range: json['inet4_range'] as String?,
      inet6Range: json['inet6_range'] as String?,
    );

Map<String, dynamic> _$FakeipToJson(Fakeip instance) => <String, dynamic>{
      'enabled': instance.enabled,
      if (instance.inet4Range case final value?) 'inet4_range': value,
      if (instance.inet6Range case final value?) 'inet6_range': value,
    };

Inbound _$InboundFromJson(Map<String, dynamic> json) => Inbound(
      type: json['type'] as String,
      tag: json['tag'] as String,
      listen: json['listen'] as String,
      listenPort: (json['listen_port'] as num).toInt(),
      sniff: json['sniff'] as bool?,
    );

Map<String, dynamic> _$InboundToJson(Inbound instance) => <String, dynamic>{
      'type': instance.type,
      'tag': instance.tag,
      'listen': instance.listen,
      'listen_port': instance.listenPort,
      if (instance.sniff case final value?) 'sniff': value,
    };

RouteRule _$RouteRuleFromJson(Map<String, dynamic> json) => RouteRule()
  ..action = json['action'] as String?
  ..rules = (json['rules'] as List<dynamic>?)
      ?.map((e) => CommonRule.fromJson(e as Map<String, dynamic>))
      .toList()
  ..ruleSet = json['rule_set']
  ..network = json['network']
  ..protocol = json['protocol']
  ..inbound = json['inbound']
  ..outbound = json['outbound']
  ..port = json['port']
  ..domain = json['domain']
  ..domainKeyword = json['domain_keyword']
  ..domainRegex = json['domain_regex']
  ..queryType = json['query_type']
  ..clashMode = json['clash_mode'] as String?
  ..ipIsPrivate = json['ip_is_private'] as bool?
  ..invert = json['invert'] as bool?
  ..type = json['type'] as String?
  ..mode = json['mode'] as String?;

Map<String, dynamic> _$RouteRuleToJson(RouteRule instance) => <String, dynamic>{
      if (instance.action case final value?) 'action': value,
      if (instance.rules case final value?) 'rules': value,
      if (instance.ruleSet case final value?) 'rule_set': value,
      if (instance.network case final value?) 'network': value,
      if (instance.protocol case final value?) 'protocol': value,
      if (instance.inbound case final value?) 'inbound': value,
      if (instance.outbound case final value?) 'outbound': value,
      if (instance.port case final value?) 'port': value,
      if (instance.domain case final value?) 'domain': value,
      if (instance.domainKeyword case final value?) 'domain_keyword': value,
      if (instance.domainRegex case final value?) 'domain_regex': value,
      if (instance.queryType case final value?) 'query_type': value,
      if (instance.clashMode case final value?) 'clash_mode': value,
      if (instance.ipIsPrivate case final value?) 'ip_is_private': value,
      if (instance.invert case final value?) 'invert': value,
      if (instance.type case final value?) 'type': value,
      if (instance.mode case final value?) 'mode': value,
    };

RouteConfig _$RouteConfigFromJson(Map<String, dynamic> json) => RouteConfig(
      rules: (json['rules'] as List<dynamic>)
          .map((e) => RouteRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      ruleSet: (json['rule_set'] as List<dynamic>?)
          ?.map((e) => RuleSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      finalServer: json['final'] as String?,
    );

Map<String, dynamic> _$RouteConfigToJson(RouteConfig instance) =>
    <String, dynamic>{
      'rules': instance.rules,
      if (instance.ruleSet case final value?) 'rule_set': value,
      if (instance.finalServer case final value?) 'final': value,
    };

RuleSet _$RuleSetFromJson(Map<String, dynamic> json) => RuleSet(
      tag: json['tag'] as String,
      type: json['type'] as String,
      format: json['format'] as String,
      url: json['url'] as String,
      downloadDetour: json['download_detour'] as String?,
    );

Map<String, dynamic> _$RuleSetToJson(RuleSet instance) => <String, dynamic>{
      'tag': instance.tag,
      'type': instance.type,
      'format': instance.format,
      'url': instance.url,
      if (instance.downloadDetour case final value?) 'download_detour': value,
    };

ConfigModelBean _$ConfigModelBeanFromJson(Map<String, dynamic> json) =>
    ConfigModelBean(
      log: LogConfig.fromJson(json['log'] as Map<String, dynamic>),
      experimental: ExperimentalConfig.fromJson(
          json['experimental'] as Map<String, dynamic>),
      dns: DnsConfig.fromJson(json['dns'] as Map<String, dynamic>),
      outbounds: (json['outbounds'] as List<dynamic>)
          .map((e) => BaseSingboxBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      inbounds: (json['inbounds'] as List<dynamic>)
          .map((e) => Inbound.fromJson(e as Map<String, dynamic>))
          .toList(),
      route: RouteConfig.fromJson(json['route'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfigModelBeanToJson(ConfigModelBean instance) =>
    <String, dynamic>{
      'log': instance.log,
      'experimental': instance.experimental,
      'dns': instance.dns,
      'outbounds': instance.outbounds,
      'inbounds': instance.inbounds,
      'route': instance.route,
    };
