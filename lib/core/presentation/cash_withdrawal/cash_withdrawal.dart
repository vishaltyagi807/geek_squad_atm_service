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

class CashWithdrawal extends StatefulWidget {
  const CashWithdrawal({super.key});

  @override
  State<CashWithdrawal> createState() => _CashWithdrawalState();
}

class _CashWithdrawalState extends State<CashWithdrawal> {
  String text = "";
  bool completed = false;
  bool enterPressed = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.please_enter_withdrawal_amount_en);
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound.please_enter_withdrawal_amount_hi);
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound.please_enter_withdrawal_amount_te);
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.please_enter_withdrawal_amount_bn);
        break;
    }
  }

  void say0() {
    setState(() {
      text += "0";
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
    setState(() {
      text += "1";
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
    setState(() {
      text += "2";
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
    setState(() {
      text += "3";
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
    setState(() {
      text += "4";
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
    setState(() {
      text += "5";
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
    setState(() {
      text += "6";
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
    setState(() {
      text += "7";
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
    setState(() {
      text += "8";
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
    setState(() {
      text += "9";
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

  void submit() async {
    if (!SpeakService.isPlaying) {
      if (CurrentLanguage.currentLang == Lang.EN) {
        await SpeakService.speak(
            EnglishSound.amount_has_been_submitted_please_wait_en);
      } else if (CurrentLanguage.currentLang == Lang.HI) {
        await SpeakService.speak(
            HindiSound.amount_has_been_submitted_please_wait_hi);
      } else if (CurrentLanguage.currentLang == Lang.BN) {
        await SpeakService.speak(
            BengaliSounds.amount_has_been_submitted_please_wait_bn);
      } else {
        await SpeakService.speak(
            TeluguSound.amount_has_been_submitted_please_wait_te);
      }
      Get.toNamed(Pages.TRANSACTION_PENDING_SCREEN, arguments: int.parse(text));
    }
  }

  void navigate() async {
    if (enterPressed) submit();
    if (completed) return;
    completed = true;
    enterPressed = true;
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(EnglishSound.you_entered_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(HindiSound.you_entered_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(BengaliSounds.you_entered_bn);
    } else {
      await SpeakService.speak(TeluguSound.you_entered_te);
    }
    await SpeakService.speakNumber(double.parse(text));
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(EnglishSound.are_you_sure_to_continue_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(HindiSound.are_you_sure_to_continue_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(BengaliSounds.are_you_sure_to_continue_bn);
    } else {
      await SpeakService.speak(TeluguSound.are_you_sure_to_continue_te);
    }
  }

  void clearPin() {
    enterPressed = false;
    completed = false;
    text = "";
    setState(() {});
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        SpeakService.speak(
            EnglishSound.amount_has_been_cleared_please_re_enter_amount_en);
        break;
      case Lang.HI:
        SpeakService.speak(
            HindiSound.amount_has_been_cleared_please_re_enter_amount_hi);
        break;
      case Lang.TE:
        SpeakService.speak(
            TeluguSound.amount_has_been_cleared_please_re_enter_amount_te);
        break;
      case Lang.BN:
        SpeakService.speak(
            BengaliSounds.amount_has_been_cleared_please_re_enter_amount_bn);
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
    LogicalKeyboardKey.escape: () {
      Get.back();
    },
  };

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: listenEvents,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              LangPage.getPageBackground(Pages.CASH_WITHDRAWAL_SCREEN),
              fit: BoxFit.fill,
              width: Get.width,
              height: Get.height,
            ),
            Positioned.fill(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 86,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: primaryColor, width: 4.5),
                        minimumSize: const Size(250, 65),
                        elevation: 30,
                      ),
                      onPressed: null,
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              size: 40,
                              Icons.currency_rupee_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              text,
                              textAlign: TextAlign.center,
                              style: Get.textTheme.titleMedium?.copyWith(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decorationStyle: TextDecorationStyle.dashed,
                                decorationColor: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
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
