class Account {
  int accountNumber;
  String holderName;
  String accountType;
  String accountOpeningDate;
  double accountBalance;

  Account({
    required this.accountNumber,
    required this.holderName,
    required this.accountType,
    required this.accountOpeningDate,
    required this.accountBalance,
  });

  Map<String, dynamic> toMap() {
    return {
      'accountNumber': this.accountNumber,
      'holderName': this.holderName,
      'accountType': this.accountType,
      'accountOpeningDate': this.accountOpeningDate,
      'accountBalance': this.accountBalance,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      accountNumber: map['accountNumber'] as int,
      holderName: map['holderName'] as String,
      accountType: map['accountType'] as String,
      accountOpeningDate: map['accountOpeningDate'] as String,
      accountBalance: map['accountBalance'] as double,
    );
  }
}
