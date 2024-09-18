class CardPinChangeRequest {
  int oldPin;
  int newPin;
  String cardNumber;

  CardPinChangeRequest({
    required this.oldPin,
    required this.newPin,
    required this.cardNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'oldPin': this.oldPin.toString(),
      'newPin': this.newPin.toString(),
      'cardNumber': this.cardNumber,
    };
  }

  factory CardPinChangeRequest.fromMap(Map<String, dynamic> map) {
    return CardPinChangeRequest(
      oldPin: map['oldPin'] as int,
      newPin: map['newPin'] as int,
      cardNumber: map['cardNumber'].toString(),
    );
  }
}
