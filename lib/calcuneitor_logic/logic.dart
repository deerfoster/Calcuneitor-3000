import 'package:math_expressions/math_expressions.dart';

class CalcuneitorLogic(){
  String? textOnScreen = '0';
  String? operationBtton;

//-------------------------------------------------------------------------------//
    void onScreen(String digit){
      if (textOnScreen == null || textOnScreen == "0" || textOnScreen!.isEmpty){
        textOnScreen = digit;
         return;
      }

      textOnScreen = textOnScreen! + digit;
    }
    void operationBttonOnScreen(String digit){
      if (textOnScreen == null ||  textOnScreen!.isEmpty) return;

      String lastDigit = textOnScreen![textOnScreen!.length - 1];

      if (lastDigit == '+' || lastDigit == '-' || lastDigit == '×' || lastDigit == '÷') {
        textOnScreen = textOnScreen!.substring(0, textOnScreen!.length - 1) + digit;
      } else {
        textOnScreen = textOnScreen! + digit;
      }

      operationBtton = digit;
    }
    void cleanerCalcu(){
      textOnScreen = '0';
      operationBtton = null;
    }
    void deleteCalcuChar(){
      if (textOnScreen == "error" || textOnScreen == "Infinity" || textOnScreen == "NaN"){
        textOnScreen = "0";
        return;
      }
      if (textOnScreen != null && textOnScreen!.isNotEmpty){
        if (textOnScreen!.length > 1){
          textOnScreen = textOnScreen!.substring(0, textOnScreen!.length -1);
        } else {
          textOnScreen = '0';
        }
      }
    }
  //----------------------------------------------------------------------------//
  void mathResults(){
    if (textOnScreen == null || textOnScreen!.isEmpty) return;

    try{
      String finalResult = textOnScreen!
      .replaceAll('×', '*')
      .replaceAll('÷', "/")
      .replaceAll(',', ".");

      Parser p = Parser();
      Expression exp = p.parse(finalResult);

      ContextModel cm = ContextModel();
      double resultado = exp.evaluate(EvaluationType.REAL, cm);

      if (resultado % 1 == 0) {
      textOnScreen = resultado.toInt().toString();
    } else {
      textOnScreen = resultado.toString();
    }
    
    } catch (e) {
      textOnScreen = 'error';
    }
  }
}
