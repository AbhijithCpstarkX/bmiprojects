import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate() {
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 40),
      ),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller:height ,
            decoration: InputDecoration(
              hintText: 'Height cm',
              labelText: 'Height',
              hintStyle: TextStyle(color: Colors.black),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3,color: Colors.black),
        borderRadius: BorderRadius.circular(70)
    )
    ),
          ),
          SizedBox(width: 30,height: 40,),
          TextField(
            controller:weight,
            decoration: InputDecoration(
              hintText: 'Weight kg',
                labelText: 'Weight',
              hintStyle: TextStyle(color: Colors.black),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 3,color: Colors.black),
    borderRadius: BorderRadius.circular(70)
    )
    ),),
          SizedBox(width: 30,height: 40,),
        TextButton(onPressed: (){
          setState(() {

          });calculate();}, child: Text('Calculate',style: TextStyle(fontSize: 20),)),Text(result.toString()),

        ],
        
      ),
    );
  }
}
