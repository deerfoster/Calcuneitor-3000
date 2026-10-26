import 'package:math_expressions/math_expressions.dart';

class CalcuneitorLogic(){
  String? textOnScreen = '0';
  String? operationBtton;

//-------------------------------------------------------------------------------//
    void onScreen(String digit){
      if (textOnScreen == '0' || textOnScreen == null){
        textOnScreen = digit;
      } else{
        textOnScreen = (textOnScreen ?? '') + digit;
      }
    }
    void operationBttonOnScreen(String digit){
      operationBtton = digit;
      textOnScreen = (textOnScreen ?? '') + digit;
    }
    void cleanerCalcu(){
      textOnScreen = '0';
      operationBtton = null;
    }
    void deleteCalcuChar(){
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
      .replaceAll('÷', "/");

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
