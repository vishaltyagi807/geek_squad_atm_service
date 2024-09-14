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

class KnowYourBalance extends StatefulWidget {
  const KnowYourBalance({super.key});

  @override
  State<KnowYourBalance> createState() => _KnowYourBalanceState();
}

class _KnowYourBalanceState extends State<KnowYourBalance> {
  double amount = 0;
  String path = "";
  RxBool loading = true.obs;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(
          EnglishSound.please_wait__your_balance_is_loading_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(
          HindiSound.please_wait__your_balance_is_loading_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(
          BengaliSounds.please_wait__your_balance_is_loading_bn);
    } else {
      await SpeakService.speak(
          TeluguSound.please_wait__your_balance_is_loading_te);
    }
    amount = await Get.find<Api>().getBalance();
    loading.value = false;
    await SpeakService.speakNumber(amount);
    repeat();
  }

  void repeat() async {
    if (CurrentLanguage.currentLang == Lang.EN) {
      await SpeakService.speak(EnglishSound
          .press_zero_to_repeat_balance_or_cancel_to_navigate_to_main_menu_en);
    } else if (CurrentLanguage.currentLang == Lang.HI) {
      await SpeakService.speak(HindiSound
          .press_zero_to_repeat_balance_or_cancel_to_navigate_to_main_menu_hi);
    } else if (CurrentLanguage.currentLang == Lang.BN) {
      await SpeakService.speak(BengaliSounds
          .press_zero_to_repeat_balance_or_cancel_to_navigate_to_main_menu_bn);
    } else {
      await SpeakService.speak(TeluguSound
          .press_zero_to_repeat_balance_or_cancel_to_navigate_to_main_menu_te);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SynchronizedKeyboardListener(
      keyEvents: {
        LogicalKeyboardKey.digit0: () async {
          if (!loading.value) {
            await SpeakService.speakNumber(amount);
            repeat();
          }
        },
        LogicalKeyboardKey.numpad0: () async {
          if (!loading.value) {
            await SpeakService.speakNumber(amount);
            repeat();
          }
        },
        LogicalKeyboardKey.escape: () {
          Get.back();
        },
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              LangPage.getPageBackground(Pages.KNOW_YOUR_BALANCE_SCREEN),
              width: Get.width,
              height: Get.height,
              fit: BoxFit.fill,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 12,
                  ),
                  child: Obx(
                    () => loading.value
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$",
                                style: Get.textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Text(
                                  amount.toString(),
                                  style: Get.textTheme.titleLarge?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
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
