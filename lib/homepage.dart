import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 165;
  int _weightnum = 60;
  int _age = 25;
  bool isMale = false;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        title: Text("BMI Calculator"),
        //leading: Icon(Icons.menu),
      ),
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          //:::::::::::::::::::::::::::::::::: 1st Card:::::::::::::::::::::
          Expanded(
              flex: 3,
              child: Center(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                                isFemale = false;
                              });
                            },
                            child: Container(
                              color: isMale == true ? Colors.blue : Colors.blueGrey[900],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 100,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(color: Colors.white54,fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                                isFemale = true;
                              });
                            },
                            child: Container(
                              color: isFemale == true ? Colors.pinkAccent : Colors.blueGrey[900],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 100,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(color: Colors.white54,fontSize: 25),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              )),
          //:::::::::::::::::::::::::::::::::: 2nd Card:::::::::::::::::::::
          Expanded(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blueGrey[900]),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "$_value",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      Slider(
                          value: _value.toDouble(),
                          min: 1.0,
                          max: 300.0,
                          divisions: 100,
                          activeColor: Colors.pinkAccent,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.pink,
                          label: 'Set Height',
                          onChanged: (double newValue) {
                            setState(() {
                              _value = newValue.round();
                            });
                          },
                          semanticFormatterCallback: (double newValue) {
                            return '${newValue.round()} dollars';
                          })
                    ],
                  ))),
          //:::::::::::::::::::::::::::::::::: 3rd Card:::::::::::::::::::::
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  children: [
                    //:::::::::::::::::::::::::::::: Card 3.1
                    Expanded(
                        child: Container(
                          color: Colors.blueGrey[900],
                          child: Column(
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                "$_weightnum",
                                style: TextStyle(color: Colors.white, fontSize: 30),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _weightnum--;
                                      });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blueGrey,
                                      maxRadius: 20,
                                      child: Icon(Icons.minimize_outlined,color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _weightnum++;
                                      });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blueGrey,
                                      child: Icon(Icons.add,color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    //:::::::::::::::::::::::::::::: Card 3.2
                    Expanded(
                        child: Container(

                          color: Colors.blueGrey[900],
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Colors.blueGrey[900],
                                    child: Column(
                                      children: [
                                        Text(
                                          "Age",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 30),
                                        ),
                                        Text(
                                          "$_age",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 30),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _age--;
                                                });
                                              },
                                              child: CircleAvatar(
                                                backgroundColor: Colors.blueGrey,
                                                maxRadius: 20,
                                                child: Icon(Icons.minimize_outlined,color: Colors.white),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _age++;
                                                });
                                              },
                                              child: CircleAvatar(
                                                backgroundColor: Colors.blueGrey,
                                                maxRadius: 20,
                                                child: Icon(Icons.add,color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
              )),

          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  bmi = _weightnum/(_value*_value)*10000;
                  print("pppp${bmi}");
                  if (bmi<19){
                    result = "You are under weight, Please eat more";
                  }
                  else if(bmi<24){
                    result = "Your weight is normal, Very Good";
                  }
                  else{
                    result = "You are over weight, Please eat less";
                  }
                  showDialog(context: context,
                      builder: (context){
                    return Dialog(
                      child: Container(
                        color: Colors.grey[300],
                        height: 200,
                        width: 400,
                        child: Column(
                          children: [
                            Text("BMI CALCULATOR",style: TextStyle(color: Colors.pink,fontSize: 30,fontWeight: FontWeight.w900)),
                            Center(
                              child: Text("BMI=$bmi",
                              style: TextStyle(fontSize: 30,
                              color: Colors.blue[900])),
                            ),
                            Center(
                              child: Text(
                                "$result",
                                style: TextStyle(
                                  fontSize: 30,color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFeb1670),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  width: 360,
                  child: Center(
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              )),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }

  String? result;
  var bmi;
}

