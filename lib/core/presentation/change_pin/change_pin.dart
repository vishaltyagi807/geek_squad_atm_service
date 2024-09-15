import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/Api.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/presentation/app/app.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class ChangePin extends StatefulWidget {
  const ChangePin({super.key});

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  bool isOldPinEntered = false;
  bool isNewPinEntered = false;
  bool isNewConfirmPinEntered = false;

  String oldPin = "";
  String newPin = "";
  String newConfirmPin = "";

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(EnglishSound.please_enter_old_pin_en);
        break;
      case Lang.HI:
        SpeakService.speak(HindiSound.please_enter_old_pin_hi);
        break;
      case Lang.TE:
        SpeakService.speak(TeluguSound.please_enter_old_pin_te);
        break;
      case Lang.BN:
        SpeakService.speak(BengaliSounds.please_enter_old_pin_bn);
        break;
    }
  }

  void say0() {
    if (!isOldPinEntered) {
      oldPin += "0";
    } else if (!isNewPinEntered) {
      newPin += "0";
    } else {
      newConfirmPin += "0";
    }
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
    setState(() {});
  }

  void say1() {
    if (!isOldPinEntered) {
      oldPin += "1";
    } else if (!isNewPinEntered) {
      newPin += "1";
    } else {
      newConfirmPin += "1";
    }
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
    setState(() {});
  }

  void say2() {
    if (!isOldPinEntered) {
      oldPin += "2";
    } else if (!isNewPinEntered) {
      newPin += "2";
    } else {
      newConfirmPin += "2";
    }
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
    setState(() {});
  }

  void say3() {
    if (!isOldPinEntered) {
      oldPin += "3";
    } else if (!isNewPinEntered) {
      newPin += "3";
    } else {
      newConfirmPin += "3";
    }
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
    setState(() {});
  }

  void say4() {
    if (!isOldPinEntered) {
      oldPin += "4";
    } else if (!isNewPinEntered) {
      newPin += "4";
    } else {
      newConfirmPin += "4";
    }
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
    setState(() {});
  }

  void say5() {
    if (!isOldPinEntered) {
      oldPin += "5";
    } else if (!isNewPinEntered) {
      newPin += "5";
    } else {
      newConfirmPin += "5";
    }
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
    setState(() {});
  }

  void say6() {
    if (!isOldPinEntered) {
      oldPin += "6";
    } else if (!isNewPinEntered) {
      newPin += "6";
    } else {
      newConfirmPin += "6";
    }
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
    setState(() {});
  }

  void say7() {
    if (!isOldPinEntered) {
      oldPin += "7";
    } else if (!isNewPinEntered) {
      newPin += "7";
    } else {
      newConfirmPin += "7";
    }
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
    setState(() {});
  }

  void say8() {
    if (!isOldPinEntered) {
      oldPin += "8";
    } else if (!isNewPinEntered) {
      newPin += "8";
    } else {
      newConfirmPin += "8";
    }
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
    setState(() {});
  }

  void say9() {
    if (!isOldPinEntered) {
      oldPin += "9";
    } else if (!isNewPinEntered) {
      newPin += "9";
    } else {
      newConfirmPin += "9";
    }
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
    setState(() {});
  }

  void reenterNewPin() async {
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(EnglishSound.you_entered_wrong_pin_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(HindiSound.you_entered_wrong_pin_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(BengaliSounds.you_entered_wrong_pin_bn);
    } else {
      await SpeakService.speak(TeluguSound.you_entered_wrong_pin_te);
    }
    init();
  }

  void navigate() async {
    if (!SpeakService.isPlaying) {
      if (!isOldPinEntered) {
        isOldPinEntered = true;
        switch (CurrentLanguage.currentLang) {
          case Lang.EN:
            await SpeakService.speak(EnglishSound.enter_new_pin);
            break;
          case Lang.HI:
            await SpeakService.speak(HindiSound.enter_new_pin);
            break;
          case Lang.TE:
            await SpeakService.speak(TeluguSound.enter_new_pin);
            break;
          case Lang.BN:
            await SpeakService.speak(BengaliSounds.enter_new_pin);
            break;
        }
      } else if (!isNewPinEntered) {
        isNewPinEntered = true;
        switch (CurrentLanguage.currentLang) {
          case Lang.EN:
            await SpeakService.speak(EnglishSound.please_reenter_new_pin_en);
            break;
          case Lang.HI:
            await SpeakService.speak(HindiSound.please_reenter_new_pin_hi);
            break;
          case Lang.TE:
            await SpeakService.speak(TeluguSound.please_reenter_new_pin_te);
            break;
          case Lang.BN:
            await SpeakService.speak(BengaliSounds.please_reenter_new_pin_bn);
            break;
        }
      } else {
        isNewConfirmPinEntered = true;
      }
      if (isNewConfirmPinEntered) {
        if (newPin != newConfirmPin) {
          oldPin = "";
          newPin = "";
          newConfirmPin = "";
          isOldPinEntered = false;
          isNewPinEntered = false;
          isNewConfirmPinEntered = false;
          setState(() {});
          reenterNewPin();
          return;
        }
        switch (CurrentLanguage.currentLang) {
          case Lang.EN:
            await SpeakService.speak(
                EnglishSound.please_wait_changing_your_pin_en);
            await Get.find<Api>().changePin(
                oldPin: int.parse(oldPin), newPin: int.parse(newPin));
            Get.toNamed(Pages.CHANGE_PIN_LOADING_SCREEN);
            break;
          case Lang.HI:
            await SpeakService.speak(
                HindiSound.please_wait_changing_your_pin_hi);
            await Get.find<Api>().changePin(
                oldPin: int.parse(oldPin), newPin: int.parse(newPin));
            Get.toNamed(Pages.CHANGE_PIN_LOADING_SCREEN);
            break;
          case Lang.TE:
            await SpeakService.speak(
                TeluguSound.please_wait_changing_your_pin_te);
            await Get.find<Api>().changePin(
                oldPin: int.parse(oldPin), newPin: int.parse(newPin));
            Get.toNamed(Pages.CHANGE_PIN_LOADING_SCREEN);
            break;
          case Lang.BN:
            await SpeakService.speak(
                BengaliSounds.please_wait_changing_your_pin_bn);
            await Get.find<Api>().changePin(
                oldPin: int.parse(oldPin), newPin: int.parse(newPin));
            Get.toNamed(Pages.CHANGE_PIN_LOADING_SCREEN);
            break;
        }
      }
    }
  }

  void clearPin() {
    if (!isOldPinEntered) {
      oldPin = "";
      setState(() {});
      switch (CurrentLanguage.currentLang) {
        case Lang.EN:
          SpeakService.speak(EnglishSound.old_pin_has_been_entered_en);
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
    LogicalKeyboardKey.escape: () {
      Get.back();
    }
  };

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: listenEvents,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              LangPage.getPageBackground(Pages.CHANGE_PIN_SCREEN),
              fit: BoxFit.fill,
              width: Get.width,
              height: Get.height,
            ),
            Positioned.fill(
              top: 135,
              left: 275,
              right: 278,
              bottom: 135,
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            CurrentLanguage.currentLang == Lang.EN
                                ? "ENTER OLD PIN"
                                : CurrentLanguage.currentLang == Lang.BN
                                    ? "পুরানো PIN লিখুন"
                                    : CurrentLanguage.currentLang == Lang.HI
                                        ? "पुराना पिन दर्ज करें"
                                        : "పాత PIN నమోదు చేయండి",
                            style: Get.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: null,
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                backgroundColor: primaryColor,
                                disabledBackgroundColor: primaryColor,
                                minimumSize: const Size(250, 65),
                              ),
                              child: Text(
                                "*" * oldPin.length,
                                style: Get.textTheme.headlineLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                CurrentLanguage.currentLang == Lang.EN
                                    ? "NEW PIN"
                                    : CurrentLanguage.currentLang == Lang.BN
                                        ? "নতুন PIN"
                                        : CurrentLanguage.currentLang == Lang.HI
                                            ? "नया पिन"
                                            : "కొత్త పిన్",
                                style: Get.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    backgroundColor: primaryColor,
                                    disabledBackgroundColor: primaryColor,
                                    minimumSize: const Size(250, 65),
                                  ),
                                  child: Text(
                                    "*" * newPin.length,
                                    style:
                                        Get.textTheme.headlineLarge?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                CurrentLanguage.currentLang == Lang.EN
                                    ? "CONFIRM PIN"
                                    : CurrentLanguage.currentLang == Lang.BN
                                        ? "PIN নিশ্চিত করুন"
                                        : CurrentLanguage.currentLang == Lang.HI
                                            ? "पिन की पुष्टि करें"
                                            : "PINని ధృవీకరించండి",
                                style: Get.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    backgroundColor: primaryColor,
                                    disabledBackgroundColor: primaryColor,
                                    minimumSize: const Size(250, 65),
                                  ),
                                  child: Text(
                                    "*" * newConfirmPin.length,
                                    style:
                                        Get.textTheme.headlineLarge?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
