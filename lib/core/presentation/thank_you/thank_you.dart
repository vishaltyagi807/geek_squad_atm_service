import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({super.key});

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound
            .thank_you_for_using_our_atm_service_hope_you_have_a_good_day_en);
        await Future.delayed(const Duration(seconds: 2));
        Get.offAllNamed(Pages.SPLASH_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound
            .thank_you_for_using_our_atm_service_hope_you_have_a_good_day_hi);
        await Future.delayed(const Duration(seconds: 2));
        Get.offAllNamed(Pages.SPLASH_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound
            .thank_you_for_using_our_atm_service_hope_you_have_a_good_day_te);
        await Future.delayed(const Duration(seconds: 2));
        Get.offAllNamed(Pages.SPLASH_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds
            .thank_you_for_using_our_atm_service_hope_you_have_a_good_day_bn);
        await Future.delayed(const Duration(seconds: 2));
        Get.offAllNamed(Pages.SPLASH_SCREEN);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        LangPage.getPageBackground(Pages.THANK_YOU_SCREEN),
        width: Get.width,
        height: Get.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
