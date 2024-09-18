import 'package:geek_squad_atm_service/api/models/card.dart';
import 'package:geek_squad_atm_service/api/models/mini_statement.dart';

abstract class ApiInterface {
  Future<double> getBalance();

  Future<bool> changePin({required int oldPin, required int newPin});

  Future<bool> withdrawAmount({required int amount});

  Future<List<MiniStatement>> getMiniStatement();

  Future<bool> insertCard({CardDetails? card});

}
