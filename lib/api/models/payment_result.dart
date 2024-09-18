import 'package:geek_squad_atm_service/api/models/payment.dart';

class PaymentResult {
  bool isSuccess;
  Payment paymentDetails;

  PaymentResult({
    required this.isSuccess,
    required this.paymentDetails,
  });

  Map<String, dynamic> toMap() {
    return {
      'isSuccess': this.isSuccess,
      'paymentDetails': this.paymentDetails,
    };
  }

  factory PaymentResult.fromMap(Map<String, dynamic> map) {
    return PaymentResult(
      isSuccess: map['isSuccess'] as bool,
      paymentDetails: Payment.fromMap(map['paymentDetails']),
    );
  }
}
