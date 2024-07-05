import 'package:go_router/go_router.dart';
import 'routing_config_provider_locator.dart'
    if (dart.library.io) 'routing_config_provider_mobile.dart'
    if (dart.library.html) 'routingconfig_provider_web.dart';

// final isWebMobile = kIsWeb && (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android);

abstract class RoutingConfigProvider {
  factory RoutingConfigProvider() => getRoutingConfigProvider();

  RoutingConfig getWebOrMobileRoutingConfig(
      RoutingConfig webRoutingConfig, RoutingConfig mobileRoutingConfig);
}
