import 'package:platform_dependent_service/src/services_implementation/core_impl.dart';
import 'package:platform_dependent_service/src/services_implementation/messaging_impl.dart';
import 'package:platform_dependent_service/src/services_implementation/storage_impl.dart';
import 'package:platform_dependent_services/platform_dependencies.dart';

class PlatformService implements PlatformDependencies {
  @override
  Analytics get analytics => throw UnimplementedError();

  @override
  Core get core => FirebaseCoreImpl();

  @override
  Messaging get messaging => MessagingImpl();

  @override
  Storage get storage => FireBaseStorage();
}
