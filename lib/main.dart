import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/Api.dart';
import 'package:get/get.dart';
import 'package:media_kit/media_kit.dart';
import 'package:window_manager/window_manager.dart';
import 'core/presentation/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  MediaKit.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(1920, 1000),
    center: true,
    fullScreen: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  Get.put(Api(), permanent: true);
  runApp(const App());
}
