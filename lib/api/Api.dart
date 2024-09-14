import 'package:geek_squad_atm_service/api/api_interface.dart';
import 'package:geek_squad_atm_service/api/models/mini_statement.dart';

class Api extends ApiInterface {
  @override
  Future<bool> changePin({required int oldPin, required int newPin}) async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }

  @override
  Future<double> getBalance() async {
    await Future.delayed(const Duration(seconds: 2));
    return 54860;
  }

  @override
  Future<List<MiniStatement>> getMiniStatement() async {
    await Future.delayed(const Duration(seconds: 2));
    return [];
  }

  @override
  Future<bool> withdrawAmount({required int amount}) async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }
}
