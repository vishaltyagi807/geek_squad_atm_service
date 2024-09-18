import 'package:geek_squad_atm_service/api/models/card.dart';

class PaymentRequest {
  String description;
  String method;
  CardDetails cardDetails;
  int amount;
  String currency;

  PaymentRequest({
    required this.description,
    required this.method,
    required this.cardDetails,
    required this.amount,
    required this.currency,
  });

  Map<String, dynamic> toMap() {
    return {
      'description': this.description,
      'method': this.method,
      'cardDetails': this.cardDetails.toMap(),
      'amount': this.amount,
      'currency': this.currency,
    };
  }

  factory PaymentRequest.fromMap(Map<String, dynamic> map) {
    return PaymentRequest(
      description: map['description'] as String,
      method: map['method'] as String,
      cardDetails: CardDetails.fromMap(map['cardDetails']),
      amount: map['amount'] as int,
      currency: map['currency'] as String,
    );
  }
}
