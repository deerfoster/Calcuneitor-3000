import 'package:flutter/material.dart';
import 'package:calcuneitor_3000/calcuneitor_logic/logic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;
  final CalcuneitorLogic _calcuLogic = CalcuneitorLogic();

//-----------------------------------------------------------------------------//

  void _onBttonPressed(String value){
    setState(() {
      switch (value) {
      case '0': 
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
      _calcuLogic.onScreen(value);
        break;
        
      case '+':
      case '-':
      case '×':
      case '÷':
      _calcuLogic.operationBttonOnScreen(value);
        break;
        
      case 'C':
      _calcuLogic.cleanerCalcu();
        break;
        
      case '=':
        break;
        
      default:
        break;
    }
    });
  }

//---------------------------------------------------------------------------------------//
  Widget _buildButton(String bttonText) {
    return Expanded(
      child: 
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: 
          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[50],
            minimumSize: Size(95, 65)
          ),
            onPressed: (){
              _onBttonPressed(bttonText);
          },
          child: Text(bttonText, style: TextStyle(color: Colors.brown[600]),),
        ),
      )
    );
  }
//------------------------------------------------------------------------------------------------------//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
        'Calcuneitor 3000', style: TextStyle(color: Colors.brown[600]),
        ),
        leading: IconButton(onPressed: () {  
          Navigator.pushNamed(context, '/info');
        }, icon: Icon(Icons.info_outline, color: Colors.brown[600],)),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 300.0,
                color: Colors.pink[50],
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24.0),
                child: Text(_calcuLogic.textOnScreen ?? '0',
                  style: TextStyle(fontSize: 48.0, color: Colors.brown, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: 
                Container(
                  color: Colors.pink[100],
                  child: Column(
                    children: [
                        Row(
                          children: [
                            _buildButton('C'),
                            _buildButton(''),
                            _buildButton('CC'),
                          ],
                        ),
                        Row(
                          children: [
                            _buildButton('1'),
                            _buildButton('2'),
                            _buildButton('3'),
                            _buildButton('÷'),
                          ],
                        ),
                        Row(
                          children: [
                            _buildButton('4'),
                            _buildButton('5'),
                            _buildButton('6'),
                            _buildButton('×'),
                          ],
                        ),
                      Row(
                        children: [
                          _buildButton('7'),
                          _buildButton('8'),
                          _buildButton('9'),
                          _buildButton('-'),
                        ],
                      ),
                      Row(
                        children: [
                          _buildButton('.'),
                          _buildButton('0'),
                          _buildButton('='),
                          _buildButton('+'),
                        ],
                      )
                    ],
                  )
                )
              )
          ],
        ),
      ),
    );
  }
}