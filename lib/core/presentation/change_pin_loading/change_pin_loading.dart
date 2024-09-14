import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';

class ChangePinLoading extends StatefulWidget {
  const ChangePinLoading({super.key});

  @override
  State<ChangePinLoading> createState() => _ChangePinLoadingState();
}

class _ChangePinLoadingState extends State<ChangePinLoading> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound.your_pin_has_been_changed_en);
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound.your_pin_has_been_changed_hi);
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound.your_pin_has_been_changed_te);
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds.your_pin_has_been_changed_bn);
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        LangPage.getPageBackground(Pages.CHANGE_PIN_LOADING_SCREEN),
        width: Get.width,
        height: Get.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
