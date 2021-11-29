import 'package:bmi_calculator/Home.dart';
import 'package:bmi_calculator/left_bar.dart';
import 'package:bmi_calculator/right_bar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
/*
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('BMI Calculator'),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height'
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                            hintText: 'Weight',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('Calculate')),
              SizedBox(height: 20,),
              Text('0.00',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),

              //start right side bar
              SizedBox(height: 20,),
              Right_bar(40),
              SizedBox(height: 20,),
              Right_bar(70),
              SizedBox(height: 20,),
              Right_bar(40),
              SizedBox(height: 20,),


              //start left side bar
              Left_bar(70),
              SizedBox(height: 20,),
              Left_bar(70),
            ],

        ),

      ),
    );
  }
}*/

