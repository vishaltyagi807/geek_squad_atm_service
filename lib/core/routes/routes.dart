import 'package:flutter/cupertino.dart';
import 'package:geek_squad_atm_service/core/presentation/card_insertion/card_insertion.dart';
import 'package:geek_squad_atm_service/core/presentation/cash_withdrawal/cash_withdrawal.dart';
import 'package:geek_squad_atm_service/core/presentation/change_pin/change_pin.dart';
import 'package:geek_squad_atm_service/core/presentation/change_pin_loading/change_pin_loading.dart';
import 'package:geek_squad_atm_service/core/presentation/collect_your_payment/collect_your_payment.dart';
import 'package:geek_squad_atm_service/core/presentation/enter_pin/enter_pin.dart';
import 'package:geek_squad_atm_service/core/presentation/know_your_balance/know_your_balance.dart';
import 'package:geek_squad_atm_service/core/presentation/main_menu/main_menu.dart';
import 'package:geek_squad_atm_service/core/presentation/mini_statement/mini_statement.dart';
import 'package:geek_squad_atm_service/core/presentation/remove_card/remove_card.dart';
import 'package:geek_squad_atm_service/core/presentation/select_lang/select_lang.dart';
import 'package:geek_squad_atm_service/core/presentation/splash_screen/splash_screen.dart';
import 'package:geek_squad_atm_service/core/presentation/thank_you/thank_you.dart';
import 'package:geek_squad_atm_service/core/presentation/transaction_pending/transaction_pending.dart';
import 'package:geek_squad_atm_service/core/presentation/welcome/welcome.dart';
import 'package:get/get.dart';

import 'pages.dart';

class Routes {
  Routes._();

  static final GlobalKey<NavigatorState> navigator = GlobalKey();

  static final routes = [
    GetPage(name: Pages.SPLASH_SCREEN, page: () => const SplashScreen()),
    GetPage(name: Pages.SELECT_LANG_SCREEN, page: () => const SelectLang()),
    GetPage(
        name: Pages.CARD_INSERTION_SCREEN, page: () => const CardInsertion()),
    GetPage(name: Pages.WELCOME_SCREEN, page: () => const Welcome()),
    GetPage(name: Pages.ENTER_PIN_SCREEN, page: () => const EnterPin()),
    GetPage(name: Pages.MAIN_MENU_SCREEN, page: () => const MainMenu()),
    GetPage(name: Pages.CHANGE_PIN_SCREEN, page: () => const ChangePin()),
    GetPage(
        name: Pages.CHANGE_PIN_LOADING_SCREEN,
        page: () => const ChangePinLoading()),
    GetPage(
        name: Pages.KNOW_YOUR_BALANCE_SCREEN,
        page: () => const KnowYourBalance()),
    GetPage(
        name: Pages.MINI_STATEMENT_SCREEN, page: () => const MiniStatement()),
    GetPage(
        name: Pages.CASH_WITHDRAWAL_SCREEN, page: () => const CashWithdrawal()),
    GetPage(
        name: Pages.TRANSACTION_PENDING_SCREEN,
        page: () => const TransactionPending()),
    GetPage(
        name: Pages.COLLECT_YOUR_PAYMENT_SCREEN,
        page: () => const CollectYourPayment()),
    GetPage(name: Pages.REMOVE_CARD_SCREEN, page: () => const RemoveCard()),
    GetPage(name: Pages.THANK_YOU_SCREEN, page: () => const ThankYou()),
  ];
}
