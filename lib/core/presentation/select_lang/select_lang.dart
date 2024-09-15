import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class SelectLang extends StatefulWidget {
  const SelectLang({super.key});

  @override
  State<SelectLang> createState() => _SelectLangState();
}

class _SelectLangState extends State<SelectLang> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    start();
  }

  void start() async {

    await SpeakService.speak(EnglishSound.select_lang);
  }

  void englishSelected() async {
    if (selected) return;
    selected = true;
    CurrentLanguage.currentLang = Lang.EN;
    await SpeakService.speak(
        EnglishSound.you_entered_1_for_english_please_wait_en);
    Get.toNamed(Pages.CARD_INSERTION_SCREEN);
  }

  void hindiSelected() async {
    if (selected) return;
    selected = true;
    CurrentLanguage.currentLang = Lang.HI;
    await SpeakService.speak(
        HindiSound.you_entered_two_for_hindi_please_wait_hi);
    Get.toNamed(Pages.CARD_INSERTION_SCREEN);
  }

  void bengaliSelected() async {
    if (selected) return;
    selected = true;
    CurrentLanguage.currentLang = Lang.BN;
    await SpeakService.speak(
        BengaliSounds.you_entered_three_for_bengali_please_wait_bn);
    Get.toNamed(Pages.CARD_INSERTION_SCREEN);
  }

  void teluguSelected() async {
    if (selected) return;
    selected = true;
    CurrentLanguage.currentLang = Lang.TE;
    await SpeakService.speak(
        TeluguSound.you_entered_four_for_telugu_please_wait_te);
    Get.toNamed(Pages.CARD_INSERTION_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: {
        LogicalKeyboardKey.numpad1: englishSelected,
        LogicalKeyboardKey.digit1: englishSelected,
        LogicalKeyboardKey.numpad2: hindiSelected,
        LogicalKeyboardKey.digit2: hindiSelected,
        LogicalKeyboardKey.numpad3: bengaliSelected,
        LogicalKeyboardKey.digit3: bengaliSelected,
        LogicalKeyboardKey.numpad4: teluguSelected,
        LogicalKeyboardKey.digit4: teluguSelected,
      },
      child: Scaffold(
        body: Image.asset(
          LangPage.getPageBackground(Pages.SELECT_LANG_SCREEN),
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
