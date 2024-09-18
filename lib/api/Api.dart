import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:geek_squad_atm_service/api/api_interface.dart';
import 'package:geek_squad_atm_service/api/card_service.dart';
import 'package:geek_squad_atm_service/api/models/card.dart';
import 'package:geek_squad_atm_service/api/models/mini_statement.dart';
import 'package:geek_squad_atm_service/api/models/payment_result.dart';
import 'package:geek_squad_atm_service/api/request_models/payment.request.dart';

const String BASE_URL = "http://localhost:8080";

class Api extends ApiInterface {
  final dio = Dio();

  @override
  Future<bool> changePin({required int oldPin, required int newPin}) async {
    print("OLD PIN : $oldPin");
    print("NEW PIN : $newPin");
    final request = await dio.post(
      "$BASE_URL/change-pin",
      data: {
        "oldPin": oldPin,
        "newPin": newPin,
        "cardNumber": CardService.currentCard!.number,
      },
    );
    if (request.data.toString() == "Pin has been changed") {
      return true;
    } else {
      print(request.data);
      return false;
    }
  }

  @override
  Future<double> getBalance() async {
    final request = await dio.get(
        "$BASE_URL/get-balance?accountNumber=${CardService.currentCard?.accountNumber}");
    print(request.data);
    return double.parse(request.data);
  }

  @override
  Future<List<MiniStatement>> getMiniStatement() async {
    final request = await dio.get("$BASE_URL/list-payments");
    final list = List<MiniStatement>.empty(growable: true);
    for (final item in request.data) {
      final data = MiniStatement.fromMap(item);
      print(data.toMap());
      list.add(data);
    }
    print("\n\n\n\n\n");
    return list;
  }

  @override
  Future<bool> withdrawAmount({required int amount}) async {
    try {
      if (CardService.currentCard == null) return false;
      final request = await dio.post(
        "$BASE_URL/make-payment",
        data: PaymentRequest(
          description: "Geek Squad - ATM Service Cash Withdrawal",
          method: "CARD",
          cardDetails: CardService.currentCard!,
          amount: amount,
          currency: "INR",
        ).toMap(),
      );
      final result = PaymentResult.fromMap(request.data);
      if (result.isSuccess) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      print(e.response .toString());
      return false;
    }
  }

  @override
  Future<bool> insertCard({CardDetails? card}) async {
    await CardService.insertCard(card: card);
    return true;
  }
}
