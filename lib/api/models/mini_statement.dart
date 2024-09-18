import 'package:geek_squad_atm_service/api/models/card.dart';

class MiniStatement {
  String date;
  String description;
  double amount;
  double balance;
  CardDetails cardDetails;

  MiniStatement({
    required this.date,
    required this.description,
    required this.amount,
    required this.balance,
    required this.cardDetails,
  });

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'description': description,
      'amount': amount,
      'balance': balance,
      'cardDetails': cardDetails.toMap(),
    };
  }

  factory MiniStatement.fromMap(Map<String, dynamic> map) {
    return MiniStatement(
      date: map['date'] as String,
      description: map['description'] as String,
      amount: map['amount'] as double,
      balance: map['balance'] as double,
      cardDetails: CardDetails.fromMap(map['cardDetails']),
    );
  }

  MiniStatement copyWith({
    String? date,
    String? description,
    double? amount,
    double? balance,
    CardDetails? cardDetails,
  }) {
    return MiniStatement(
      date: date ?? this.date,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      balance: balance ?? this.balance,
      cardDetails: cardDetails ?? this.cardDetails,
    );
  }
}
