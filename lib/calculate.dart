import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
class Home extends StatefulWidget {
  @override 
  _Home createState() => new _Home();
}

class _Home extends State<Home> {

  @override
void initState() {
  super.initState();
  checkSemester();
}

  List _grades = ['A', 'B', 'C', 'D', 'E', 'F']; 
  List<int> _creditunits = [1, 2, 3, 4, 5, 6]; 
  double cgpa = 0.0;
  String gpa = '0.0';
  String _currentSemester;
  int creditUnitSum=0;
  bool status = false;



  final List<int> recordIndex = <int>[];
  final List<String> courses = <String>[];
  final List<int> creditUnits = <int>[];
  final List<String> grades = <String>[];
  final List<int> getMultiples = <int>[];
  int _indexCounter = 0;
  String gradeValue;
  Widget statusText = Text("");

  final courseCodeText = TextEditingController();

  Future<void> checkSemester() async{
    if (global.choosenSemester==1){
       _currentSemester = "1st Semester";
    } else {
      _currentSemester = "2nd Semester";
    }
  }

    void calculate(int itemIndex){
    if (creditUnits[itemIndex]!=null && grades[itemIndex]!=null){
      if (grades[itemIndex] == 'A'){
          double getGpa;
          var f = new NumberFormat("0.0#", "en_US");
          if (getMultiples.length < grades.length){
            getMultiples.add(5*creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);


            });
          }else{
            getMultiples[itemIndex] = 5*creditUnits[itemIndex];
            print(creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }
      }
      if (grades[itemIndex] == 'B'){
          double getGpa;
          var f = new NumberFormat("0.0#", "en_US");
          if (getMultiples.length < grades.length){
            getMultiples.add(4*creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }else{
            getMultiples[itemIndex] = 4*creditUnits[itemIndex];
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }
      }
      if (grades[itemIndex] == 'C'){
          double getGpa;
          var f = new NumberFormat("0.0#", "en_US");
          if (getMultiples.length < grades.length){
            getMultiples.add(3*creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }else{
            getMultiples[itemIndex] = 3*creditUnits[itemIndex];
            print(creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }
      }
      if (grades[itemIndex] == 'D'){
          double getGpa;
          var f = new NumberFormat("0.0#", "en_US");
          if (getMultiples.length < grades.length){
            getMultiples.add(2*creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }else{
            getMultiples[itemIndex] = 2*creditUnits[itemIndex];
            print(creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }
      }
      if (grades[itemIndex] == 'E'){
          double getGpa;
          var f = new NumberFormat("0.0#", "en_US");
          if (getMultiples.length < grades.length){
            getMultiples.add(1*creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }else{
            getMultiples[itemIndex] = 1*creditUnits[itemIndex];
            print(creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }
      }
      if (grades[itemIndex] == 'F'){
          double getGpa;
          var f = new NumberFormat("0.0#", "en_US");
          if (getMultiples.length < grades.length){
            getMultiples.add(0*creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }else{
            getMultiples[itemIndex] = 0*creditUnits[itemIndex];
            print(creditUnits[itemIndex]);
            print(getMultiples);
            setState((){
              creditUnitSum = creditUnits.reduce((a,b)=>a+b);
              getGpa = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              gpa = f.format(getGpa);

            });
          }
      }
    }
  }


  void addItemToList(){
    setState(() {
      grades.add(null);
      courses.add("");
      creditUnits.add(null);
      print(courses);
      print(creditUnits);
      print(grades);
    });
    if(recordIndex.length == 0){
      setState((){
        recordIndex.add(0);
      });
    }else{
      setState(() {
        _indexCounter = _indexCounter+1;
        recordIndex.add(_indexCounter);
      });
      print(recordIndex);
    }
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff00a57c),
      //   title: Text("CGPA Calculator", style: TextStyle(color: Colors.white),)
      // ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: 
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: 
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 25,
                                  child:
                                    FlatButton(
                                      padding: EdgeInsets.all(0),
                                      // color: Colors.blue,
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: 
                                        Icon(Icons.arrow_back, color: Colors.black),
                                    ),
                                ),
                                Text("${global.choosenLevel} level", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                Container()
                              ],
                            )
                        ),
                        Text('$_currentSemester'),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: 
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    // color: Colors.blue
                                  ),
                                  // width: MediaQuery.of(context).size.width*0.3333,
                                  child: Column(
                                    children: <Widget>[
                                      Text("COURSES", style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                            
                            Expanded(
                              child: 
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  // color: Colors.blue[200]
                                ),
                                // width: MediaQuery.of(context).size.width*0.3333,
                                child: Column(
                                  children: <Widget>[
                                    Text("CREDIT UNIT", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),

                            ),

                            Expanded(
                              child: 
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    // color: Colors.blue[100]
                                  ),
                                  // width: MediaQuery.of(context).size.width*0.3333,
                                  child: Column(
                                    children: <Widget>[
                                      Text("GRADE", style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                )
                              ),
                        ],),

                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.red
                            ),
                            child: 

                              ListView.builder(
                                padding: const EdgeInsets.all(8),
                                itemCount: recordIndex.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      // Text('${names[index]} (${msgCount[index]})',
                                      //   style: TextStyle(fontSize: 18),
                                      // ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            // alignment: Alignment.center,
                                            width: 80,
                                            padding: EdgeInsets.only(bottom:8),
                                            // decoration: BoxDecoration(color: Colors.green),
                                            child: new TextField(
                                              // controller: courseCodeText,
                                              textCapitalization: TextCapitalization.characters,
                                              onChanged: ((val){
                                                courses[index] = val;
                                                print(courses);
                                              }),
                                              textAlign: TextAlign.center,
                                              cursorColor: Colors.grey,
                                              decoration: new InputDecoration(
                                                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                                                  hintText: 'Course Code',
                                                  hintStyle: new TextStyle(
                                                    fontSize: 12),
                                                  labelStyle: new TextStyle(
                                                      color: const Color(0xFF000000),
                                                      fontSize: 12

                                                  )
                                              ),

                                            ),
                                        )
                                        ],
                                      )
                                      ),
                                    Expanded(
                                    child: Container(
                                      width: 20,
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          DropdownButton(
                                                  // hint: Text('A'),
                                                  value: creditUnits[index],
                                                  onChanged: (newValue) {                                                    
                                                    setState(() {
                                                       creditUnits[index] = newValue;
                                                       print(creditUnits);
                                                    });
                                                    calculate(index);
                                                  },
                                                  
                                                  items: _creditunits.map((creditUnit) {
                                                    return DropdownMenuItem(
                                                      child: new Text("$creditUnit"),
                                                      value: creditUnit,
                                                    );
                                                  }).toList(),
                                              ),
                                        ],
                                      )
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            // margin: EdgeInsets.only(left:20),
                                            padding: EdgeInsets.only(bottom:0),
                                            // decoration: BoxDecoration(color: Colors.grey),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: gradeValue!= null? grades[index]: gradeValue,
                                                  onChanged: (newValue) {
                                                    setState((){
                                                    grades[index] = newValue;
                                                    gradeValue = newValue;
                                                    });
                                                    
                                                    calculate(index);
                                                    
                                                  },
                                                  
                                                  items: _grades.map((creditUnit) {
                                                    return DropdownMenuItem(
                                                      child: new Text("$creditUnit"),
                                                      value: creditUnit,
                                                    );
                                                  }).toList(),
                                              ),
                                          ),
                                          // Container(
                                          //   width: 20,
                                          //   margin: EdgeInsets.only(right:20),
                                          //   child:
                                          //   FlatButton(
                                          //     padding: EdgeInsets.all(0),
                                          //     onPressed: (){},
                                          //     child: 
                                          //       Icon(Icons.delete, 
                                          //         color: Color(0xffff0000),
                                          //         )
                                          //     )
                                          // )
                                        ],
                                      ),
                                      )
                                    ),
                                    
                                  ],);
                                }
                              ),
                          
                          )
                          ),
                          status ? Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: statusText
                          ) : Container(),
                       Container(
                         padding: EdgeInsets.only(top:5, bottom:10),
                        child: Center(
                          child: Container(
                            width: 200,
                            child: FlatButton(
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              onPressed: submitResults,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("DONE   "),
                                  Icon(Icons.check_circle_outline, size: 20)
                                ]
                              )
                            )
                          )
                        )
                      ),
                          
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: FlatButton(
                          onPressed: (){
                            addItemToList();
                          },
                          color: Color(0xff00a57c),
                          child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Add Course", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                Icon(Icons.add_box, color: Colors.white,)
                            ],)
                          ,)
                      )
                      
                      ]
                    ),
                  
                ),
              ),

            Container(
              decoration: BoxDecoration(
                // color: Colors.yellow[700]
              ),
              // height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(0.0, 0.0), //(x,y)
                          blurRadius: 10.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    height: 70,
                    width: 70,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Text("CREDIT UNIT", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("$creditUnitSum", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                      ],
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(0.0, 0.0), //(x,y)
                          blurRadius: 10.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    height: 70,
                    width: 70,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Text("SGPA", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("$gpa", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                      ],
                      ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey[400],
                  //         offset: Offset(0.0, 0.0), //(x,y)
                  //         blurRadius: 10.0,
                  //       ),
                  //     ],
                  //     borderRadius: BorderRadius.circular(15)
                  //   ),
                  //   height: 70,
                  //   width: 70,
                  //   child: Column(
                  //     children: <Widget>[
                  //       SizedBox(
                  //         height: 15,
                  //       ),
                  //       Text("CGPA", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Text("$cgpa", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  //     ],
                  //     ),
                  // )
              ],),
            )
          ],
          )
        )
      );
  }

  Future<http.Response> submitResults() async {
    if (courses.contains('') && creditUnits.contains(null) && grades.contains(null)){
      setState(() { 
        status = true;
        statusText = Text("All fields must be filled", style: TextStyle(color: Colors.red, fontSize: 12,),);
      });
    } else{
      var response = await http.post(
              'https://murmuring-caverns-42248.herokuapp.com/api/users/results',
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
                'Accept': 'application/json',
                'Authorization':global.token
              },
              body: json.encode({
                "level": global.choosenLevel,
                "courses": courses,
                "creditUnits": creditUnits,
                "grades": grades,
                "semester": global.choosenSemester
              }),
            );

          print(response.body);

          print("The status code is ${response.statusCode}");

        if (response.statusCode == 200){
          setState(() { 
            status = true;
            statusText = Text("Success", style: TextStyle(color: Colors.green, fontSize: 12,),);
          });
          Navigator.pushNamedAndRemoveUntil(context, '/records', (Route<dynamic> route) => false);
        }

    }
  }
}