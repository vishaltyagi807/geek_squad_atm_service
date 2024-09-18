import 'package:geek_squad_atm_service/api/models/card.dart';

class CardService {
  CardService._();

  static CardDetails? currentCard = null;

  static Future<bool> insertCard({CardDetails? card}) async {
    currentCard = CardDetails(
      holderName: "Varshit Tyagi",
      number: "6095986610345494",
      cvv: 759,
      expireDate: "2025-09-18T17:27:58.014060500",
      pin: 9050,
      accountNumber: 1726506043898,
    );
    await Future.delayed(Duration(milliseconds: 500));
    return true;
  }
}
