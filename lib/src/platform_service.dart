import 'package:platform_dependent_services/platform_dependencies.dart';

class PlatformService implements PlatformDependencies {
  @override
  Analytics get analytics => GmsAnalytics();

  @override
  // TODO: implement core
  Core get core => throw UnimplementedError();

  @override
  // TODO: implement messaging
  Messaging get messaging => throw UnimplementedError();

  @override
  // TODO: implement storages
  Storages get storages => throw UnimplementedError();
}

class GmsAnalytics implements Analytics {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }
}
