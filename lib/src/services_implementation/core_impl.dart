import 'package:firebase_core/firebase_core.dart';
import 'package:platform_dependent_service/src/firebase_options.dart';
import 'package:platform_dependent_services/platform_dependencies.dart';

class FirebaseCore implements Core {
  @override
  void dispose() {}

  @override
  Future<void> init() async {
    await Firebase.initializeApp(
        name: 'thomas_munz_client',
        options: DefaultFirebaseOptions.currentPlatform);
  }
}
