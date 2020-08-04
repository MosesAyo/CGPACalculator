import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'addRecord.dart';
import 'package:http/http.dart' as http;
import  'global.dart' as global;
import 'selectedRecord.dart';
import 'package:intl/intl.dart';

class Records extends StatefulWidget{
  @override
  _Records createState() => new _Records();
}

class _Records extends State<Records>{

  List<String> _levels = ['100 level', '200 level', '300 level', '400 level', '500 level'];
  String _currentlySelectedLevel;
  bool _showLevel = true;
  bool _showSemester = false;
  bool _showOverlay = false;
  bool loading = true;
  bool _currentResult = false;
  List _allCourses = [];
  List _allCourseUnits =[];
  List _allGrades = [];
  List user = [];
  List universalResult = [];
  List  results;
  String username = "";
  String ndaNumber = "";
  String email = "";
  List getMultiples = [];
  String cgpa = "";


  @override
  void initState(){
    this. _fetchData();
  } 

  _fetchData() async {
    setState(() {
      loading = true;
    });

    print("Insde fetch data");

    final response = await http.get(
        "https://murmuring-caverns-42248.herokuapp.com/api/users/current",
        headers: {HttpHeaders.authorizationHeader:global.token},
        );

    if (response.statusCode == 200) {
      user.add(json.decode(response.body));
      // results.add();
      setState(() {
        username = user[0]['name'];
        ndaNumber = user[0]['ndaNumber'];
        email = user[0]['email'];
      });

      print(json.decode(response.body)); // _InternalLinkedHashMap<String, dynamic>
      // print(user[0]['results']);

      results = (user[0]['results'] as List)
          .map((data) => Results.fromJson(data))
          .toList();
      setState(() {
        global.allRecords = results;
        universalResult = user[0]['results'];
      });
      if (results.length > 0 ){setState((){_currentResult = true;});}
      if (results.length>0){
        double getCGPA;

        var f = new NumberFormat("0.0#", "en_US");
        for (var eachResult = 0; eachResult < results.length; eachResult++) {
              List _firstSemesterCoures = [results[eachResult].semester][0]['first']['courses'];
              List _firstSemesterCreditUnits = [results[eachResult].semester][0]['first']['creditUnits'];
              List _firstSemesterGrades = [results[eachResult].semester][0]['first']['grades'];
              List _secondSemesterCoures = [results[eachResult].semester][0]['second']['courses'];
              List _secondSemesterCreditUnits = [results[eachResult].semester][0]['second']['creditUnits'];
              List _secondSemesterGrades = [results[eachResult].semester][0]['second']['grades'];
              if (_firstSemesterCoures.length>0){
                for(var eachCourse = 0; eachCourse < _firstSemesterCoures.length; eachCourse++){
                  _allCourses.add(_firstSemesterCoures[eachCourse]);
                  _allCourseUnits.add(_firstSemesterCreditUnits[eachCourse]);
                  if (_firstSemesterGrades[eachCourse]=="A"){
                    getMultiples.add(_firstSemesterCreditUnits[eachCourse]*5);
                    _allGrades.add(5);
                    print(_firstSemesterGrades[eachCourse]);
                  }
                  if (_firstSemesterGrades[eachCourse]=="B"){
                    getMultiples.add(_firstSemesterCreditUnits[eachCourse]*4);
                    _allGrades.add(4);
                    print(_firstSemesterGrades[eachCourse]);
                  }
                  if (_firstSemesterGrades[eachCourse]=="C"){
                    getMultiples.add(_firstSemesterCreditUnits[eachCourse]*3);
                    _allGrades.add(3);
                    print(_firstSemesterGrades[eachCourse]);
                  }
                  if (_firstSemesterGrades[eachCourse]=="D"){
                    getMultiples.add(_firstSemesterCreditUnits[eachCourse]*2);
                    _allGrades.add(2);
                    print(_firstSemesterGrades[eachCourse]);
                  }
                  if (_firstSemesterGrades[eachCourse]=="E"){
                    getMultiples.add(_firstSemesterCreditUnits[eachCourse]*1);
                    _allGrades.add(1);
                    print(_firstSemesterGrades[eachCourse]);
                  }
                  if (_firstSemesterGrades[eachCourse]=="F"){
                    getMultiples.add(_firstSemesterCreditUnits[eachCourse]*0);
                    _allGrades.add(0);
                    print(_firstSemesterGrades[eachCourse]);
                  }
                }
              }
              if (_secondSemesterCoures.length>0){
                for (var eachCourse =0; eachCourse < _secondSemesterCoures.length; eachCourse++){
                  _allCourses.add(_secondSemesterCoures[eachCourse]);
                  _allCourseUnits.add(_secondSemesterCreditUnits[eachCourse]);
                  if (_secondSemesterGrades[eachCourse]=="A"){
                    _allGrades.add(5);
                    print(_secondSemesterGrades[eachCourse]);
                    getMultiples.add(_secondSemesterCreditUnits[eachCourse]*5);
                    print(getMultiples);
                  }
                  if (_secondSemesterGrades[eachCourse]=="B"){
                    _allGrades.add(4);
                    getMultiples.add(_secondSemesterCreditUnits[eachCourse]*4);
                    print(_secondSemesterGrades[eachCourse]);
                  }
                  if (_secondSemesterGrades[eachCourse]=="C"){
                    getMultiples.add(_secondSemesterCreditUnits[eachCourse]*3);
                    _allGrades.add(3);
                    print(_secondSemesterGrades[eachCourse]);
                  }
                  if (_secondSemesterGrades[eachCourse]=="D"){
                    getMultiples.add(_secondSemesterCreditUnits[eachCourse]*2);
                    _allGrades.add(2);
                    print(_secondSemesterGrades[eachCourse]);
                  }
                  if (_secondSemesterGrades[eachCourse]=="E"){
                    getMultiples.add(_secondSemesterCreditUnits[eachCourse]*1);
                    _allGrades.add(1);
                    print(_secondSemesterGrades[eachCourse]);
                  }
                  if (_secondSemesterGrades[eachCourse]=="F"){
                    getMultiples.add(_secondSemesterCreditUnits[eachCourse]*0);
                    _allGrades.add(0);
                    print(_secondSemesterGrades[eachCourse]);
                  }
                }
              }
              // print([results[eachResult].semester][0]['first']['courses']);
              // print([results[eachResult].semester][0]['second']['courses']);
            }

            setState((){
                int creditUnitSum = _allCourseUnits.reduce((a,b)=>a+b);
                print(creditUnitSum);
                getCGPA = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
                cgpa = f.format(getCGPA);
                print("CGPA $cgpa");
              });

              print(_allCourses);
              print(_allGrades);
              print(_allCourseUnits);
      }
      // print(results);
      // print(results.length);

      // loading = false;

      // print(list[1]);

      setState(() {
        loading = false;
      });
    } else {
      throw Exception('Failed to load');
    }
  }

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: 
      SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child:
              Column(
                children: <Widget>[
                  Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: Center(child: Icon(Icons.person, color: Colors.grey,),)
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("$username", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("$ndaNumber")
                                    ]
                                  )
                                ),

                              ],
                            ),
                            Container(
                              width: 23,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                onPressed: (){
                                  setState((){
                                    _showOverlay = true;
                                  });
                                },
                                child:Icon(Icons.menu)
                                )
                            )
                        ],),
                        ),
                    ]
                    ,)
                ),

                !_currentResult ? Expanded(
                  child: Center(
                    child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffE8E8E8)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              SvgPicture.asset("assets/svg/list.svg"),
                              SizedBox(
                                height: 20,
                              ),
                              Text("You currently do not have any record."),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 200,
                                child: FlatButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AddRecord()));
                                }, 
                                color: Color(0xff8e8e8e),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Create Record", style: TextStyle(color: Colors.white)),
                                    SizedBox(width: 10,),
                                    Icon(Icons.add, color: Colors.white,)
                                  ],
                                  )
                                ),
                              )
                            ],
                            ),
                          ),
                  )
                  ):Container(),
                _currentResult ? Expanded(
                  child: 
                  Container(
                    // color: Colors.green,
                    padding: EdgeInsets.only(top:50),
                    height: double.infinity,
                    child:
                    Center(child: 
                      ListView.builder(
                      itemCount: results.length > 0 ? results.length : 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffE8E8E8),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          // padding: EdgeInsets.only(left: 30, right: 30),
                          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: 
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            onPressed: (){
                              setState(() {
                                global.indexofSelectedRecord = index;
                              });
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedRecord()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("${results[index].level} level"),
                                Text("0.00")
                            ],),
                          )
                          );
                          }),
                    )
                      )
                  ): Container(),

                  _currentResult ? Container(
                    color: Color(0xff00a57c),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AddRecord()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Add Record", style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10,),
                          Icon(Icons.add, color: Colors.white)
                      ],)),
                  ):Container()

              ],)
            ),


      // Overlay for level goes here .......................
      // ...................................................
      _showOverlay ? BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child:
                 Container(
                        decoration: BoxDecoration(
                          color: Color(0x10000000)
                        ),
                        child: FlatButton(
                          splashColor: Colors.transparent,  
                          highlightColor: Colors.transparent, // makes highlight invisible too
                          onPressed: (){
                            setState((){
                              _showOverlay = false;
                            });
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                            // print("Close now");
                            },
                          child: 
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[



                                // Containers for selecting semester goes here.........

                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    height: 45,
                                    width: 200,
                                    child:  Container(
                                        child: FlatButton(
                                          onPressed: (){
                                            setState((){
                                              global.token = "";
                                            });
                                            Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> route) => false);
                                          }, 
                                          color: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(
                                            child: Text("logout", style: TextStyle(color: Colors.black),),
                                          )
                                          )
                                      )
                                  )
                                )

                            ],)
                        )
                )
            ): Container(),

        ],)
        
        )

    );
  }
}

class Results {
  final String id;
  final String level;
  final Map semester;
  final String gpa;

  Results({ this.gpa, this.id, this.level, this.semester});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      gpa: json['gpa'],
      id: json['_id'],
      level: json['level'],
      semester: json['semester']
    );
  }
}