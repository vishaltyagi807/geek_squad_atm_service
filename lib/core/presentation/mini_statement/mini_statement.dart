import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class MiniStatement extends StatefulWidget {
  const MiniStatement({super.key});

  @override
  State<MiniStatement> createState() => _MiniStatementState();
}

class _MiniStatementState extends State<MiniStatement> {
  @override
  void initState() {
    super.initState();
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(
            EnglishSound.press_cancel_to_go_back_to_main_menu_en);
        break;
      case Lang.HI:
        SpeakService.speak(HindiSound.press_cancel_to_go_back_to_main_menu_hi);
        break;
      case Lang.TE:
        SpeakService.speak(TeluguSound.press_cancel_to_go_back_to_main_menu_te);
        break;
      case Lang.BN:
        SpeakService.speak(
            BengaliSounds.press_cancel_to_go_back_to_main_menu_bn);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: {
        LogicalKeyboardKey.escape: () {
          Get.back();
        },
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              LangPage.getPageBackground(Pages.MINI_STATEMENT_SCREEN),
              fit: BoxFit.fill,
              width: Get.width,
              height: Get.height,
            ),
            Positioned(
              child: Center(
                child: Image.asset(
                  "assets/images/common/statement.png",
                  width: Get.width * .6,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
