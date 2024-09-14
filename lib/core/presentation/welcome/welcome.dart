import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    if (selected) return;
    selected = false;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound.press_one_for_special_user);
        if (!selected) {
          await SpeakService.speak(EnglishSound.press_two_for_normal_user);
        }
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound.press_one_for_special_user);
        if (!selected) {
          await SpeakService.speak(HindiSound.press_two_for_normal_user);
        }
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound.press_one_for_special_user);
        if (!selected) {
          await SpeakService.speak(TeluguSound.press_two_for_normal_user);
        }
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds.press_one_for_special_user);
        if (!selected) {
          await SpeakService.speak(BengaliSounds.press_two_for_normal_user);
        }
        break;
    }
  }

  void specialSelected() async {
    if (selected) return;
    selected = true;
    SpeakService.setEnabled(true);
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.you_entered_one_for_special_user_please_wait_en);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.you_entered_one_for_special_user_please_wait_hi);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.you_entered_one_for_special_user_please_wait_te);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.you_entered_one_for_special_user_please_wait_bn);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
    }
  }

  void normalSelected() async {
    if (selected) return;
    selected = true;
    SpeakService.setEnabled(false);
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.you_entered_two_for_normal_user_please_wait_en);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.you_entered_two_for_normal_user_please_wait_hi);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.you_entered_two_for_normal_user_please_wait_te);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.you_entered_two_for_normal_user_please_wait_bn);
        Get.toNamed(Pages.ENTER_PIN_SCREEN);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: {
        LogicalKeyboardKey.numpad1: specialSelected,
        LogicalKeyboardKey.digit1: specialSelected,
        LogicalKeyboardKey.numpad2: normalSelected,
        LogicalKeyboardKey.digit2: normalSelected,
        LogicalKeyboardKey.digit0: init,
        LogicalKeyboardKey.numpad0: init,
      },
      child: Scaffold(
        body: Image.asset(
          LangPage.getPageBackground(Pages.WELCOME_SCREEN),
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
