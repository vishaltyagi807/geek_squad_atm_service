import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/api/service.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/utils/pages_lang.dart';
import 'package:geek_squad_atm_service/utils/sounds.dart';
import 'package:get/get.dart';
import 'package:synchronized_keyboard_listener/synchronized_keyboard_listener.dart';

class CardInsertion extends StatefulWidget {
  const CardInsertion({super.key});

  @override
  State<CardInsertion> createState() => _CardInsertionState();
}

class _CardInsertionState extends State<CardInsertion> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    if (selected) return;
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        await SpeakService.speak(EnglishSound
            .hii_welcome_to_geek_squad_atm_service_please_insert_your_card_the_card_slot_is_at_your_left_side_en);
        if (!selected && Get.currentRoute == Pages.CARD_INSERTION_SCREEN) {
          await SpeakService.speak(EnglishSound.press_zero_to_repeat_en);
        }
        break;
      case Lang.HI:
        await SpeakService.speak(HindiSound
            .hii_welcome_to_geek_squad_atm_service_please_insert_your_card_the_card_slot_is_at_your_left_side_hi);
        if (!selected && Get.currentRoute == Pages.CARD_INSERTION_SCREEN) {
          await SpeakService.speak(HindiSound.press_zero_to_repeat_hi);
        }
        break;
      case Lang.TE:
        await SpeakService.speak(TeluguSound
            .hii_welcome_to_geek_squad_atm_service_please_insert_your_card_the_card_slot_is_at_your_left_side_te);
        if (!selected && Get.currentRoute == Pages.CARD_INSERTION_SCREEN) {
          await SpeakService.speak(TeluguSound.press_zero_to_repeat);
        }
        break;
      case Lang.BN:
        await SpeakService.speak(BengaliSounds
            .hii_welcome_to_geek_squad_atm_service_please_insert_your_card_the_card_slot_is_at_your_left_side_bn);
        if (!selected && Get.currentRoute == Pages.CARD_INSERTION_SCREEN) {
          await SpeakService.speak(BengaliSounds.press_zero_to_repeat);
        }
        break;
    }
  }

  void navigate() async {
    await Future.delayed(Duration(seconds: 1));
    Get.toNamed(Pages.WELCOME_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: {
        LogicalKeyboardKey.enter: () async {
          if (selected) return;
          selected = true;
          switch (CurrentLanguage.currentLang) {
            case Lang.EN:
              await SpeakService.speak(
                  EnglishSound.card_inserted_successfully_en);
              navigate();
              break;
            case Lang.HI:
              await SpeakService.speak(
                  HindiSound.card_inserted_successfully_hi);
              navigate();
              break;
            case Lang.TE:
              await SpeakService.speak(
                  TeluguSound.card_inserted_successfully_te);
              navigate();
              break;
            case Lang.BN:
              await SpeakService.speak(
                  BengaliSounds.card_inserted_successfully_bn);
              navigate();
              break;
          }
        },
        LogicalKeyboardKey.numpadEnter: () async {
          if (selected) return;
          selected = true;
          switch (CurrentLanguage.currentLang) {
            case Lang.EN:
              await SpeakService.speak(
                  EnglishSound.card_inserted_successfully_en);
              navigate();
              break;
            case Lang.HI:
              await SpeakService.speak(
                  HindiSound.card_inserted_successfully_hi);
              navigate();
              break;
            case Lang.TE:
              await SpeakService.speak(
                  TeluguSound.card_inserted_successfully_te);
              navigate();
              break;
            case Lang.BN:
              await SpeakService.speak(
                  BengaliSounds.card_inserted_successfully_bn);
              navigate();
              break;
          }
        },
        LogicalKeyboardKey.digit0: init,
        LogicalKeyboardKey.numpad0: init,
      },
      child: Scaffold(
        body: Image.asset(
          LangPage.getPageBackground(Pages.CARD_INSERTION_SCREEN),
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
