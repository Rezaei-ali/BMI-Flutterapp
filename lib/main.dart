import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double Height = 172;
  num weight = 62;
  num age = 21;
  Color firstColor=Colors.white;
  Color twoColor=Colors.white;
  late String status;
  late double BMI;
  
  void change(h) {
    setState(() {
      Height = h;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) =>  Scaffold(
          backgroundColor: Color.fromRGBO(58, 53, 53, 1),
          appBar: AppBar(
            elevation: 0,
            title: Text('BMI'),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(58, 53, 53, 1),
          ),
          body: Column(
            children: [
              Container(
                height: 150,
                //First Row
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(35, 32, 32, 1),
                          ),
                          margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          padding: EdgeInsets.all(20),
                          //First Column
                          child: TextButton(

                            onPressed: () {
                              setState(() {
                                firstColor=Colors.pinkAccent;
                                twoColor=Colors.white;
                              });
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/mars.svg',
                                  width: 50,
                                  color: firstColor,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Male',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(35, 32, 32, 1),
                          ),
                          margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          padding: EdgeInsets.all(20),
                          //Second Column
                          child: 	TextButton(
                            onPressed: (){
                              setState(() {
                                firstColor=Colors.white;
                                twoColor=Colors.pinkAccent;
                              });
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/venus.svg',
                                    width: 50,
                                    color: twoColor),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Female',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(35, 32, 32, 1),
                ),
                margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                padding: EdgeInsets.all(25),
                //Second Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'height',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Row(
                          children: [
                            Text('${Height.toInt()}',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20)),
                            Text('cm', style: TextStyle(color: Colors.white70))
                          ],
                        ),
                        CupertinoSlider(
                            activeColor: Colors.pinkAccent,
                            value: Height,
                            min: 120,
                            max: 240,
                            divisions: 120,
                            onChanged: change),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 160,
                //Third Row
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(35, 32, 32, 1),
                          ),
                          margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'weight',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${weight}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        weight = weight - 1;
                                      });
                                    },
                                    backgroundColor: Colors.black45,
                                    child: Icon(Icons.remove),
                                  ),
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        weight = weight + 1;
                                      });
                                    },
                                    backgroundColor: Colors.black45,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromRGBO(35, 32, 32, 1),
                          ),
                          margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'age',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${age}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        age = age - 1;
                                      });
                                    },
                                    backgroundColor: Colors.black45,
                                    child: Icon(Icons.remove),
                                  ),
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        age = age + 1;
                                      });
                                    },
                                    backgroundColor: Colors.black45,
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.only(
                  //         topRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20))),
                  width: double.infinity,
                  //Forth Row
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    onPressed: () {

                       BMI = weight/ pow((Height/100),2);
                       if(BMI < 18.5)
                         status='under weight';
                       else if (BMI > 18.5 && BMI <24.9)
                         status='healthy weight';
                       else if (BMI > 24.9 && BMI < 29.9)
                         status='over weight';
                       else if (BMI > 30.0)
                         status='obese';
                       else
                         status='error! your BMI is $BMI';
                       showCupertinoDialog(context: context, builder: (context) => CupertinoAlertDialog(
                         title: Text('Your Status is'),
                         content: Text(status) ,
                         actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('dismiss',style: TextStyle(color: Colors.black),))],
                       ));

                    },
                    color: Colors.pinkAccent,
                    child: Text(
                      'Calculate BMI',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
