import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/api/Api.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';

class TransactionPending extends StatefulWidget {
  const TransactionPending({super.key});

  @override
  State<TransactionPending> createState() => _TransactionPendingState();
}

class _TransactionPendingState extends State<TransactionPending> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(
          EnglishSound.your_transaction_is_being_processing_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(
          HindiSound.your_transaction_is_being_processing_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(
          BengaliSounds.your_transaction_is_being_processing_bn);
    } else {
      await SpeakService.speak(
          TeluguSound.your_transaction_is_being_processing_te);
    }
    await Get.find<Api>().withdrawAmount(amount: Get.arguments);
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(
          EnglishSound.your_transaction_has_been_completed_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(
          HindiSound.your_transaction_has_been_completed_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(
          BengaliSounds.your_transaction_has_been_completed_bn);
    } else {
      await SpeakService.speak(
          TeluguSound.your_transaction_has_been_completed_te);
    }
    Get.toNamed(Pages.COLLECT_YOUR_PAYMENT_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        LangPage.getPageBackground(Pages.TRANSACTION_PENDING_SCREEN),
        width: Get.width,
        height: Get.height,
        fit: BoxFit.fill,
      ),
    );
  }
}
