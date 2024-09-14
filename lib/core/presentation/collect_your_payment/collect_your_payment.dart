import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';

class CollectYourPayment extends StatefulWidget {
  const CollectYourPayment({super.key});

  @override
  State<CollectYourPayment> createState() => _CollectYourPaymentState();
}

class _CollectYourPaymentState extends State<CollectYourPayment> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound.please_collect_your_payment_en);
        await Future.delayed(const Duration(seconds: 3));
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound.please_collect_your_payment_hi);
        await Future.delayed(const Duration(seconds: 3));
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound.please_collect_your_payment_te);
        await Future.delayed(const Duration(seconds: 3));
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds.please_collect_your_payment_bn);
        await Future.delayed(const Duration(seconds: 3));
        Get.toNamed(Pages.REMOVE_CARD_SCREEN);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        LangPage.getPageBackground(Pages.COLLECT_YOUR_PAYMENT_SCREEN),
        width: Get.width,
        height: Get.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
