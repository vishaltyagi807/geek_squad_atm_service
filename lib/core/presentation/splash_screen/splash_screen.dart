import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    CurrentLanguage.currentLang = Lang.EN;
    _focusNode.requestFocus();
  }

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    SpeakService.hii();
    return KeyboardListener(
      onKeyEvent: (e) {
        if (e is KeyDownEvent) {
          Get.toNamed(Pages.SELECT_LANG_SCREEN);
        }
      },
      focusNode: _focusNode,
      child: Scaffold(
        body: Image.asset(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          LangPage.getPageBackground(Pages.SPLASH_SCREEN),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
