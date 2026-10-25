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

    void onScreen(String digit){
      if (textOnScreen == '0' || textOnScreen == null){
        textOnScreen = digit;
      } else{
        textOnScreen = (textOnScreen ?? '') + digit;
      }
    }

    cleanerCalcu(){
      textOnScreen = '0';
      value1 = null;
      value2 = null;
      operationBtton = null;

    }
}
