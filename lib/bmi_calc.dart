import 'package:flutter/material.dart';
class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double result=0;
  double w_value=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.tealAccent,
    appBar: AppBar(title:Text('BMI CALCULATOR'),backgroundColor: Colors.teal,titleTextStyle:TextStyle(fontSize: 35,color: Colors.white)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,children: [
        TextField(
          controller: height,
            decoration: InputDecoration(
              filled: true,
                fillColor: Colors.white,
                hintText: 'height',
                labelText: 'height',
                hintStyle: TextStyle(color: Colors.grey),
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(50),

                )
            )
        ),
      SizedBox(
        height: 25,
        width: 20,
      ),
      TextField(controller: weight,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
            hintText: 'weight',
              labelText: 'weight',
              hintStyle: TextStyle(color: Colors.grey),
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(50),
              )
          )
        ,),
      TextButton(
          onPressed:()
      {
        setState(() {
          calculate();
        });
        },
          child: Text(' click to calculate')),
        Text(result.toString())
      ],),
    );
  }
}
