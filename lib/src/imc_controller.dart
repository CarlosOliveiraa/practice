import 'package:flutter/cupertino.dart';

class ImcController extends ValueNotifier<double> {
  ImcController() : super(0.0);

  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  double get peso => double.parse(pesoController.text);

  double get altura => double.parse(alturaController.text);
  String resultado = "Informe seu peso e sua altura";

  String calcImc() {
    value = peso / (altura * altura);
    if (value < 18) {
      resultado = "Abaixo do peso, seu IMC é: ${value.toStringAsFixed(2)}";
    } else if (value > 18.5 && value < 24.9) {
      resultado = "Peso ideal, seu IMC é: ${value.toStringAsFixed(2)}";
    } else if (value > 25 && value < 29.9) {
      resultado = "Acima do peso, seu IMC é: ${value.toStringAsFixed(2)}";
    }
    return resultado;
  }
}
