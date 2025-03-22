import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/core/routes/routes.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../../api/service.dart';

const Color primaryColor = Color(0xFF2A8CD5);

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late StopWatchTimer stopWatchTimer;
  Timer? _longPressTimer;
  Duration _longPressDuration = Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
    SpeakService.speak(
        "assets/English/geek_squad_atm_service_has_been_started.mp3");
    stopWatchTimer = StopWatchTimer(
      presetMillisecond: 1000 * 60 * 5,
      isLapHours: false,
      mode: StopWatchMode.countDown,
      onEnded: () {
        if (Get.currentRoute == Pages.SPLASH_SCREEN) return;
        stopWatchTimer.onResetTimer();
        Get.offAllNamed(Pages.SPLASH_SCREEN);
      },
    );
    stopWatchTimer.onStartTimer();
  }

  final _focusNode = FocusNode();

  void _handleKeyDown(KeyEvent event) {
    if (_longPressTimer == null) {
      _longPressTimer = Timer(_longPressDuration, () {
        Get.offAllNamed(Pages.SPLASH_SCREEN);
        stopWatchTimer.onResetTimer();
        stopWatchTimer.onStartTimer();
      });
    }
  }

  void _handleKeyUp(KeyEvent event) {
    _cancelLongPress();
  }

  void _cancelLongPress() {
    if (_longPressTimer != null) {
      _longPressTimer!.cancel();
      _longPressTimer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      autofocus: true,
      focusNode: _focusNode,
      onKeyEvent: (event) {
        if (event is KeyDownEvent &&
            event.logicalKey == LogicalKeyboardKey.escape) {
          _handleKeyDown(event);
        } else if (event is KeyUpEvent &&
            event.logicalKey == LogicalKeyboardKey.escape) {
          _handleKeyUp(event);
        }
        stopWatchTimer.onResetTimer();
        stopWatchTimer.onStartTimer();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.none,
        child: GetMaterialApp(
          title: "Geek Squad -- ATM Service",
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: primaryColor,
          ),
          debugShowCheckedModeBanner: false,
          getPages: Routes.routes,
          initialRoute: "/testing",
        ),
      ),
    );
  }
}
