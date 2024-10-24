import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:platform_dependent_services/models/message_model.dart';
import 'package:platform_dependent_services/platform_dependencies.dart';

class MessagingImpl implements Messaging {
  late final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void dispose() {}

  @override
  Future<void> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<void> init() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  @override
  // TODO: implement onBackroundMessage
  Stream<MessageModel> get onBackroundMessage => throw UnimplementedError();

  @override
  Stream<MessageModel> get onForegroundMessage => FirebaseMessaging.onMessage
          .skipWhile((element) => element.notification == null)
          .asyncMap(
        (event) {
          final notification = event.notification;
          return MessageModel(
            body: notification!.body,
            data: event.data,
            title: notification.title,
          );
        },
      );

  @override
  // TODO: implement onTokenRefresh
  Stream<String> get onTokenRefresh => throw UnimplementedError();

  @override
  Future<void> requestPermission() async =>
      await _firebaseMessaging.requestPermission();

  @override
  // TODO: implement token
  String? get token => throw UnimplementedError();
}
