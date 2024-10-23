import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:platform_dependent_services/platform_dependencies.dart';

class PlatformService implements PlatformDependencies {
  @override
  Analytics get analytics => throw UnimplementedError();

  @override
  Core get core => throw UnimplementedError();

  @override
  Messaging get messaging => throw UnimplementedError();

  @override
  Storage get storage => FireBaseStorage();
}

class FireBaseStorage implements Storage {
  final _storage = FirebaseStorage.instance;
  late Reference _ref;

  @override
  void dispose() {}

  @override
  Future<void> initReference({required String id}) async {
    _ref = _storage.ref('logs/$id');
  }

  @override
  Future<void> exportPersonalLogs({required File file}) async {
    _ref.putFile(file, SettableMetadata(contentType: 'text')).ignore();
  }

  @override
  Future<void> init() async {}
}
