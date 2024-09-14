import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/presentation/app/app.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class EnterPin extends StatefulWidget {
  const EnterPin({super.key});

  @override
  State<EnterPin> createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  String text = "";
  String pin = "";
  bool submitted = false;

  @override
  void initState() {
    super.initState();
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(
            EnglishSound.please_enter_your_pin_and_press_enter_once_done_en);
      case Lang.HI:
        SpeakService.speak(
            HindiSound.please_enter_your_pin_and_press_enter_once_done_hi);
      case Lang.TE:
        SpeakService.speak(
            TeluguSound.please_enter_your_pin_and_press_enter_once_done_te);
      case Lang.BN:
        SpeakService.speak(
            BengaliSounds.please_enter_your_pin_and_press_enter_once_done_bn);
    }
  }

  void say0() {
    if (submitted) return;
    setState(() {
      pin += "0";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_0_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_0_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_0_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_0_BE, isNumber: true);
        break;
    }
  }

  void say1() {
    if (submitted) return;
    setState(() {
      pin += "1";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_1_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_1_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_1_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_1_BE, isNumber: true);
        break;
    }
  }

  void say2() {
    if (submitted) return;
    setState(() {
      pin += "2";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_2_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_2_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_2_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_2_BE, isNumber: true);
        break;
    }
  }

  void say3() {
    if (submitted) return;
    setState(() {
      pin += "3";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_3_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_3_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_3_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_3_BE, isNumber: true);
        break;
    }
  }

  void say4() {
    if (submitted) return;
    setState(() {
      pin += "4";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_4_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_4_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_4_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_4_BE, isNumber: true);
        break;
    }
  }

  void say5() {
    if (submitted) return;
    setState(() {
      pin += "5";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_5_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_5_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_5_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_5_BE, isNumber: true);
        break;
    }
  }

  void say6() {
    if (submitted) return;
    setState(() {
      pin += "6";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_6_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_6_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_6_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_6_BE, isNumber: true);
        break;
    }
  }

  void say7() {
    if (submitted) return;
    setState(() {
      pin += "7";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_7_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_7_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_7_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_7_BE, isNumber: true);
        break;
    }
  }

  void say8() {
    if (submitted) return;
    setState(() {
      pin += "8";
      text += "*";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_8_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_8_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_8_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_8_BE, isNumber: true);
        break;
    }
  }

  void say9() {
    if (submitted) return;
    setState(() {
      text += "*";
      pin += "9";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(NumberSounds.NUM_9_EN, isNumber: true);
        break;
      case Lang.HI:
        SpeakService.speak(NumberSounds.NUM_9_HI, isNumber: true);
        break;
      case Lang.TE:
        SpeakService.speak(NumberSounds.NUM_9_TE, isNumber: true);
        break;
      case Lang.BN:
        SpeakService.speak(NumberSounds.NUM_9_BE, isNumber: true);
        break;
    }
  }

  void navigate() async {
    if (submitted) return;
    submitted = true;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.pin_has_been_submitted_please_wait_en);
        Get.toNamed(Pages.MAIN_MENU_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.pin_has_been_submitted_please_wait_hi);
        Get.toNamed(Pages.MAIN_MENU_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.pin_has_been_submitted_please_wait_te);
        Get.toNamed(Pages.MAIN_MENU_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.pin_has_been_submitted_please_wait_bn);
        Get.toNamed(Pages.MAIN_MENU_SCREEN);
        break;
    }
  }

  void clearPin() {
    setState(() {
      text = "";
      pin = "";
    });
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(EnglishSound.pin_has_been_cleared_en);
        break;
      case Lang.HI:
        SpeakService.speak(HindiSound.pin_has_been_cleared_hi);
        break;
      case Lang.TE:
        SpeakService.speak(TeluguSound.pin_has_been_cleared_te);
        break;
      case Lang.BN:
        SpeakService.speak(BengaliSounds.pin_has_been_cleared_bn);
        break;
    }
  }

  late Map<LogicalKeyboardKey, dynamic Function()> listenEvents = {
    LogicalKeyboardKey.digit0: say0,
    LogicalKeyboardKey.digit1: say1,
    LogicalKeyboardKey.digit2: say2,
    LogicalKeyboardKey.digit3: say3,
    LogicalKeyboardKey.digit4: say4,
    LogicalKeyboardKey.digit5: say5,
    LogicalKeyboardKey.digit6: say6,
    LogicalKeyboardKey.digit7: say7,
    LogicalKeyboardKey.digit8: say8,
    LogicalKeyboardKey.digit9: say9,
    LogicalKeyboardKey.numpad0: say0,
    LogicalKeyboardKey.numpad1: say1,
    LogicalKeyboardKey.numpad2: say2,
    LogicalKeyboardKey.numpad3: say3,
    LogicalKeyboardKey.numpad4: say4,
    LogicalKeyboardKey.numpad5: say5,
    LogicalKeyboardKey.numpad6: say6,
    LogicalKeyboardKey.numpad7: say7,
    LogicalKeyboardKey.numpad8: say8,
    LogicalKeyboardKey.numpad9: say9,
    LogicalKeyboardKey.enter: navigate,
    LogicalKeyboardKey.numpadEnter: navigate,
    LogicalKeyboardKey.backspace: clearPin,
  };

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: listenEvents,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              LangPage.getPageBackground(Pages.ENTER_PIN_SCREEN),
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              child: Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                    side: const BorderSide(color: primaryColor, width: 5),
                    elevation: 30,
                    minimumSize: const Size(280, 65),
                  ),
                  onPressed: null,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: Get.textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
