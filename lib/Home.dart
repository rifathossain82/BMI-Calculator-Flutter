import 'package:bmi_calculator/data.dart';
import 'package:bmi_calculator/left_bar.dart';
import 'package:bmi_calculator/right_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final TextEditingController controller_1=TextEditingController();
final TextEditingController controller_2=TextEditingController();

double bmi_result=0;
String text_result='';

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(color: accentHexColor,fontWeight: FontWeight.w300),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //for height design
                Container(
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: controller_1,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height',
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      )
                    ),
                  ),
                ),

                //for weight design
                Container(
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: controller_2,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight',
                        hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8),
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                double h_=double.parse(controller_1.text);
                double w_=double.parse(controller_2.text);

                setState(() {
                  bmi_result=w_/(h_*h_);
                  if(bmi_result>25){
                    text_result='You\'re over weight';
                  }
                  else if(bmi_result>=18.5 && bmi_result<=25){
                    text_result='You have normal weight';
                  }
                  else{
                    text_result='You\'re under weight';
                  }
                });
              },
              child: Container(
                child: Text('Calculate', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: accentHexColor),),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: Text(bmi_result.toStringAsFixed(2),
                style: TextStyle(fontSize: 90,color: accentHexColor),
              ),
            ),
            SizedBox(height: 30,),
            Visibility(
                visible: text_result.isNotEmpty,
                child: Container(
                  child: Text(text_result,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400,color: accentHexColor),),
                )
            ),
            //start right side bar
            SizedBox(height: 10,),
            Right_bar(40),
            SizedBox(height: 20,),
            Right_bar(70),
            SizedBox(height: 20,),
            Right_bar(40),


            //start left side bar
            SizedBox(height: 20,),
            Left_bar(70),
            SizedBox(height: 50,),
            Left_bar(70),

          ],
        ),
      ),
    );
  }
}
