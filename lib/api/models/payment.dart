import 'package:geek_squad_atm_service/api/models/card.dart';

class Payment {
  String transactionId;
  String description;
  String date;
  String method;
  CardDetails cardDetails;
  double amount;
  String currency;

  Payment({
    required this.transactionId,
    required this.description,
    required this.date,
    required this.method,
    required this.cardDetails,
    required this.amount,
    required this.currency,
  });

  Map<String, dynamic> toMap() {
    return {
      'transactionId': this.transactionId,
      'description': this.description,
      'date': this.date,
      'method': this.method,
      'cardDetails': this.cardDetails,
      'amount': this.amount,
      'currency': this.currency,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      transactionId: map['transactionId'] as String,
      description: map['description'] as String,
      date: map['date'] as String,
      method: map['method'] as String,
      cardDetails: CardDetails.fromMap(map['cardDetails']),
      amount: map['amount'] as double,
      currency: map['currency'] as String,
    );
  }
}
