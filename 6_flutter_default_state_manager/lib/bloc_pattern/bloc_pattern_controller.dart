import 'dart:async';
import 'dart:math';

import 'imc_state.dart';

class BlocPatternController {
  final _streamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0));
  Stream<ImcState> get imcOut => _streamController.stream;
  // Sink<ImcState> get imcIn => _streamController.sink;

  Future<void> calcularIMC(
      {required double peso, required double altura}) async {
    try {
      _streamController.add(ImcStateLoading());
      await Future.delayed(const Duration(seconds: 1));

      final imc = peso / pow(altura, 2);
      // throw Exception();
      _streamController.add(ImcState(imc: imc));
    } catch (e) {
      _streamController.add(ImcStateError(message: 'Erro ao calcular IMC'));
    }

// com sink
    // imcIn.add(ImcState(imc: 0));
    // await Future.delayed(const Duration(seconds: 1));

    // final imc = peso / pow(altura, 2);
    // imcIn.add(ImcState(imc: imc));
  }

  void dispose() {
    _streamController.close();
  }
}
