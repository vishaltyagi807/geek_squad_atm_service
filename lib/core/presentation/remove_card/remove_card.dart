import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';

class RemoveCard extends StatefulWidget {
  const RemoveCard({super.key});

  @override
  State<RemoveCard> createState() => _RemoveCardState();
}

class _RemoveCardState extends State<RemoveCard> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound.please_remove_your_card_en);
        cardRemoved();
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound.please_remove_your_card_hi);
        cardRemoved();
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound.please_remove_your_card_te);
        cardRemoved();
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds.please_remove_your_card_bn);
        cardRemoved();
        break;
    }
  }

  void cardRemoved() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(
            EnglishSound.your_card_has_been_removed_successfully_en);
        Get.toNamed(Pages.THANK_YOU_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(
            HindiSound.your_card_has_been_removed_successfully_hi);
        Get.toNamed(Pages.THANK_YOU_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(
            TeluguSound.your_card_has_been_removed_successfully_te);
        Get.toNamed(Pages.THANK_YOU_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(
            BengaliSounds.your_card_has_been_removed_successfully_bn);
        Get.toNamed(Pages.THANK_YOU_SCREEN);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        LangPage.getPageBackground(Pages.REMOVE_CARD_SCREEN),
        width: Get.width,
        height: Get.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
