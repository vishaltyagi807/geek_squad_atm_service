import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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
        SpeakService.speak(EnglishSound.main_menu_en);
        break;
      case Lang.HI:
        SpeakService.speak(HindiSound.main_menu_hi);
        break;
      case Lang.TE:
        SpeakService.speak(TeluguSound.main_menu_te);
        break;
      case Lang.BN:
        SpeakService.speak(BengaliSounds.main_menu_bn);
        break;
    }
  }

  void navigateToChangePin() async {
    if (selected) return;
    selected = true;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound
            .you_selected_one_for_pin_change_or_update_please_wait_en);
        await Get.toNamed(Pages.CHANGE_PIN_SCREEN);
        selected = false;
        init();
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound
            .you_selected_one_for_pin_change_or_update_please_wait_hi);
        await Get.toNamed(Pages.CHANGE_PIN_SCREEN);
        selected = false;
        init();
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound
            .you_selected_one_for_pin_change_or_update_please_wait_te);
        await Get.toNamed(Pages.CHANGE_PIN_SCREEN);
        selected = false;
        init();
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds
            .you_selected_one_for_pin_change_or_update_please_wait_bn);
        await Get.toNamed(Pages.CHANGE_PIN_SCREEN);
        selected = false;
        init();
        break;
    }
  }

  void navigateToKnowYourBalance() async {
    if (selected) return;
    selected = true;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.you_selected_two_to_know_your_balance_please_wait_en);
        await Get.toNamed(Pages.KNOW_YOUR_BALANCE_SCREEN);
        selected = false;
        init();
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.you_selected_two_to_know_your_balance_please_wait_hi);
        await Get.toNamed(Pages.KNOW_YOUR_BALANCE_SCREEN);
        selected = false;
        init();
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.you_selected_two_to_know_your_balance_please_wait_te);
        await Get.toNamed(Pages.KNOW_YOUR_BALANCE_SCREEN);
        selected = false;
        init();
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.you_selected_two_to_know_your_balance_please_wait_bn);
        await Get.toNamed(Pages.KNOW_YOUR_BALANCE_SCREEN);
        selected = false;
        init();
        break;
    }
  }

  void navigateToMiniStatement() async {
    if (selected) return;
    selected = true;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.you_selected_three_for_mini_statement_please_wait_en);
        await Get.toNamed(Pages.MINI_STATEMENT_SCREEN);
        selected = false;
        init();
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.you_selected_three_for_mini_statement_please_wait_hi);
        await Get.toNamed(Pages.MINI_STATEMENT_SCREEN);
        selected = false;
        init();
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.you_selected_three_for_mini_statement_please_wait_te);
        await Get.toNamed(Pages.MINI_STATEMENT_SCREEN);
        selected = false;
        init();
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.you_selected_three_for_mini_statement_please_wait_bn);
        await Get.toNamed(Pages.MINI_STATEMENT_SCREEN);
        selected = false;
        init();
        break;
    }
  }

  void navigateToWithdrawal() async {
    if (selected) return;
    selected = true;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.you_selected_four_for_cash_withdrawal_please_wait_en);
        await Get.toNamed(Pages.CASH_WITHDRAWAL_SCREEN);
        selected = false;
        init();
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.you_selected_four_for_cash_withdrawal_please_wait_hi);
        await Get.toNamed(Pages.CASH_WITHDRAWAL_SCREEN);
        selected = false;
        init();
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.you_selected_four_for_cash_withdrawal_please_wait_te);
        await Get.toNamed(Pages.CASH_WITHDRAWAL_SCREEN);
        selected = false;
        init();
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.you_selected_four_for_cash_withdrawal_please_wait_bn);
        await Get.toNamed(Pages.CASH_WITHDRAWAL_SCREEN);
        selected = false;
        init();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: {
        LogicalKeyboardKey.numpad1: navigateToChangePin,
        LogicalKeyboardKey.digit1: navigateToChangePin,
        LogicalKeyboardKey.numpad2: navigateToKnowYourBalance,
        LogicalKeyboardKey.digit2: navigateToKnowYourBalance,
        LogicalKeyboardKey.numpad3: navigateToMiniStatement,
        LogicalKeyboardKey.digit3: navigateToMiniStatement,
        LogicalKeyboardKey.numpad4: navigateToWithdrawal,
        LogicalKeyboardKey.digit4: navigateToWithdrawal,
        LogicalKeyboardKey.digit0: init,
        LogicalKeyboardKey.numpad0: init,
      },
      child: Scaffold(
        body: Image.asset(
          LangPage.getPageBackground(Pages.MAIN_MENU_SCREEN),
          fit: BoxFit.fill,
          width: Get.width,
          height: Get.height,
        ),
      ),
    );
  }
}
