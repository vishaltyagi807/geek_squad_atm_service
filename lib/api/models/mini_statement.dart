class MiniStatement {
  String date;
  String description;
  double amount;
  double balance;

  MiniStatement({
    required this.date,
    required this.description,
    required this.amount,
    required this.balance,
  });

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'description': description,
      'amount': amount,
      'balance': balance,
    };
  }

  factory MiniStatement.fromMap(Map<String, dynamic> map) {
    return MiniStatement(
      date: map['date'] as String,
      description: map['description'] as String,
      amount: map['amount'] as double,
      balance: map['balance'] as double,
    );
  }

  MiniStatement copyWith({
    String? date,
    String? description,
    double? amount,
    double? balance,
  }) {
    return MiniStatement(
      date: date ?? this.date,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      balance: balance ?? this.balance,
    );
  }
}
