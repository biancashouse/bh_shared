import 'package:go_router/go_router.dart';

import 'routing_config_provider.dart';

RoutingConfigProvider getRouterProvider() => MobileRoutingConfigProvider();

class MobileRoutingConfigProvider implements RoutingConfigProvider {
  @override
  RoutingConfig getWebOrMobileRoutingConfig(RoutingConfig webRoutingConfig, RoutingConfig? mobileRoutingConfig) => mobileRoutingConfig ?? webRoutingConfig;
}
