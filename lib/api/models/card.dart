class CardDetails {
  String holderName;
  String number;
  int cvv;
  String expireDate;
  int pin;
  int accountNumber;

  CardDetails({
    required this.holderName,
    required this.number,
    required this.cvv,
    required this.expireDate,
    required this.pin,
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'holderName': this.holderName,
      'number': this.number,
      'cvv': this.cvv,
      'expireDate': this.expireDate,
      'pin': this.pin,
      'accountNumber': this.accountNumber,
    };
  }

  factory CardDetails.fromMap(Map<String, dynamic> map) {
    return CardDetails(
      holderName: map['holderName'] as String,
      number: map['number'] as String,
      cvv: map['cvv'] as int,
      expireDate: map['expireDate'] as String,
      pin: map['pin'] as int,
      accountNumber: map['accountNumber'] as int,
    );
  }
}
