class CalcuneitorLogic(){
  double? value1;
  double? value2;
  String? textOnScreen = '0';
  double? valueOnScreen;
  String? operationBtton;

    SumCalcu(double value1, double value2){
    double result = value1 + value2;
    return result;
    }

    substractCalcu(double value1, double value2){
      double result = value1 - value2;
      return result;
    }

    multiplicationCalcu(double value1, double value2){
      double result = value1 * value2;
      return result;
    }

    divisionCalcu(double value1, double value2){
      double result = value1 / value2;
      return result;
    }
//-------------------------------------------------------------------------------//
    void onScreen(String digit){
      if (textOnScreen == '0' || textOnScreen == null){
        textOnScreen = digit;
      } else{
        textOnScreen = (textOnScreen ?? '') + digit;
      }
    }
    void operationBttonOnScreen(String digit){
      value1 = double.tryParse(textOnScreen ?? '0');
      operationBtton = digit;
      textOnScreen = '0';
    }
    void cleanerCalcu(){
      textOnScreen = '0';
      value1 = null;
      value2 = null;
      operationBtton = null;
    }
  //----------------------------------------------------------------------------//
  void mathResults(){
    if (value1 == null || operationBtton == null) return;

    value2 = double.tryParse(textOnScreen ?? '0');
    if (value2 == null) return;
    double result = 0;

    switch (operationBtton){
      case '+':
      result = SumCalcu(value1!, value2!);
      break;
      case '-':
      result = substractCalcu(value1!, value2!);
      break;
      case '×':
      result = multiplicationCalcu(value1!, value2!);
      break;
      case '÷':
      result = value2 != 0? divisionCalcu(value1!, value2!) : 0;
      break;
      default:
      break;
    }

    textOnScreen = result.toString();
    value1 = result;
    operationBtton = null;
  }
}
