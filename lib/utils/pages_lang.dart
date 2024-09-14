import 'package:geek_squad_atm_service/api/current_lang.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';

class LangPage {
  LangPage._();

  static const String assetsRoot = "assets/images";

  static String _getEnBackground(String page, String lang) {
    if (page == Pages.SPLASH_SCREEN || page == Pages.SELECT_LANG_SCREEN) {
      return "$assetsRoot/common$page.png";
    } else {
      return "$assetsRoot/$lang$page.png";
    }
  }

  static String getPageBackground(String page) {
    switch (CurrentLanguage.currentLang) {
      case Lang.EN:
        return _getEnBackground(page, "en");
      case Lang.HI:
        return _getEnBackground(page, "hi");
      case Lang.TE:
        return _getEnBackground(page, "te");
      case Lang.BN:
        return _getEnBackground(page, "bn");
    }
  }
}
