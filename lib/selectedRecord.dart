import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'global.dart' as global;

class SelectedRecord extends StatefulWidget{
  @override
  _SelectedRecord createState()=> new _SelectedRecord();
}

class _SelectedRecord extends State<SelectedRecord> {
  List<String> _semesters = ["First Semester", "Second Semester"];
  String _selectedSem;
  Map currentSemester;
  Map firstSemester;
  Map secondSemester;

  List _allCourses = [];
  List _allCourseUnits = [];

  bool _hasGpa = false;
  bool _courses = false;
  bool _first = true;
  String _sgpa ="";
  String _gpa="";
  String _firstSgpa="";
  String _secondSgpa="";
  List <int> _allGrades = <int>[];

  List _firstSemCreditUnit = [];
  List _secSemCreditUnit = [];
  List <int> getMultiples = <int>[];
  List <int> getFirstSemMultiples = <int>[];
  List <int> getSecSemMultiples = <int>[];

  @override
  void initState(){
    this._getData();
  } 
  _getData() async {
      var f = new NumberFormat("0.0#", "en_US");
      currentSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['first'];
      firstSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['first'];
      secondSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['second'];
      // setState((){
      //   _firstSemGrades = [firstSemester][0]['grades'];
      //   _secSemGrades = [secondSemester][0]['grades'];
      //   _grades = [currentSemester][0]['grades'];
      //   _creditUnit = [currentSemester][0]['creditUnits'];
      //   _firstSemCreditUnit = [firstSemester][0]['_creditUnits'];
      //   _secSemCreditUnit = [secondSemester][0]['_creditUnits'];
      //   });


      List _firstSemesterCoures = [firstSemester][0]['courses'];
      List _firstSemesterCreditUnits = [firstSemester][0]['creditUnits'];
      List _firstSemesterGrades = [firstSemester][0]['grades'];
      List _secondSemesterCoures = [secondSemester][0]['courses'];
      List _secondSemesterCreditUnits = [secondSemester][0]['creditUnits'];
      List _secondSemesterGrades = [secondSemester][0]['grades'];
      if (_firstSemesterCoures.length>0 && _secondSemesterCoures.length>0) {setState(() {
        _hasGpa = true;
      });}
      if (_firstSemesterCoures.length>0){
        for(var eachCourse = 0; eachCourse < _firstSemesterCoures.length; eachCourse++){
          _allCourses.add(_firstSemesterCoures[eachCourse]);
          _allCourseUnits.add(_firstSemesterCreditUnits[eachCourse]);
          _firstSemCreditUnit.add(_firstSemesterCreditUnits[eachCourse]);
          if (_firstSemesterGrades[eachCourse]=="A"){
            getFirstSemMultiples.add(_firstSemesterCreditUnits[eachCourse]*5);
            getMultiples.add(_firstSemesterCreditUnits[eachCourse]*5);
            _allGrades.add(5);
            print(_firstSemesterGrades[eachCourse]);
          }
          if (_firstSemesterGrades[eachCourse]=="B"){
            getFirstSemMultiples.add(_firstSemesterCreditUnits[eachCourse]*4);
            getMultiples.add(_firstSemesterCreditUnits[eachCourse]*4);
            _allGrades.add(4);
            print(_firstSemesterGrades[eachCourse]);
          }
          if (_firstSemesterGrades[eachCourse]=="C"){
            getFirstSemMultiples.add(_firstSemesterCreditUnits[eachCourse]*3);
            getMultiples.add(_firstSemesterCreditUnits[eachCourse]*3);
            _allGrades.add(3);
            print(_firstSemesterGrades[eachCourse]);
          }
          if (_firstSemesterGrades[eachCourse]=="D"){
            getFirstSemMultiples.add(_firstSemesterCreditUnits[eachCourse]*2);
            getMultiples.add(_firstSemesterCreditUnits[eachCourse]*2);
            _allGrades.add(2);
            print(_firstSemesterGrades[eachCourse]);
          }
          if (_firstSemesterGrades[eachCourse]=="E"){
            getFirstSemMultiples.add(_firstSemesterCreditUnits[eachCourse]*1);
            getMultiples.add(_firstSemesterCreditUnits[eachCourse]*1);
            _allGrades.add(1);
            print(_firstSemesterGrades[eachCourse]);
          }
          if (_firstSemesterGrades[eachCourse]=="F"){
            getFirstSemMultiples.add(_firstSemesterCreditUnits[eachCourse]*0);
            getMultiples.add(_firstSemesterCreditUnits[eachCourse]*0);
            _allGrades.add(0);
            print(_firstSemesterGrades[eachCourse]);
          }
        }
        setState((){
              int creditUnitSum = _firstSemCreditUnit.reduce((a,b)=>a+b);
                print(creditUnitSum);
                double getSCGPA = getFirstSemMultiples.reduce((a, b) => a + b)/creditUnitSum;
                _firstSgpa = f.format(getSCGPA);
                print("FIRST SGPA $_firstSgpa");
            });
      }
      if (_secondSemesterCoures.length>0){
        for (var eachCourse =0; eachCourse < _secondSemesterCoures.length; eachCourse++){
          _allCourses.add(_secondSemesterCoures[eachCourse]);
          _allCourseUnits.add(_secondSemesterCreditUnits[eachCourse]);
          _secSemCreditUnit.add(_secondSemesterCreditUnits[eachCourse]);
          if (_secondSemesterGrades[eachCourse]=="A"){
            _allGrades.add(5);
            print(_secondSemesterGrades[eachCourse]);
            getSecSemMultiples.add(_secondSemesterCreditUnits[eachCourse]*5);
            getMultiples.add(_secondSemesterCreditUnits[eachCourse]*5);
            print(getMultiples);
          }
          if (_secondSemesterGrades[eachCourse]=="B"){
            _allGrades.add(4);
            getSecSemMultiples.add(_secondSemesterCreditUnits[eachCourse]*4);
            getMultiples.add(_secondSemesterCreditUnits[eachCourse]*4);
            print(_secondSemesterGrades[eachCourse]);
          }
          if (_secondSemesterGrades[eachCourse]=="C"){
            getSecSemMultiples.add(_secondSemesterCreditUnits[eachCourse]*3);
            getMultiples.add(_secondSemesterCreditUnits[eachCourse]*3);
            _allGrades.add(3);
            print(_secondSemesterGrades[eachCourse]);
          }
          if (_secondSemesterGrades[eachCourse]=="D"){
            getSecSemMultiples.add(_secondSemesterCreditUnits[eachCourse]*2);
            getMultiples.add(_secondSemesterCreditUnits[eachCourse]*2);
            _allGrades.add(2);
            print(_secondSemesterGrades[eachCourse]);
          }
          if (_secondSemesterGrades[eachCourse]=="E"){
            getSecSemMultiples.add(_secondSemesterCreditUnits[eachCourse]*1);
            getMultiples.add(_secondSemesterCreditUnits[eachCourse]*1);
            _allGrades.add(1);
            print(_secondSemesterGrades[eachCourse]);
          }
          if (_secondSemesterGrades[eachCourse]=="F"){
            getSecSemMultiples.add(_secondSemesterCreditUnits[eachCourse]*0);
            getMultiples.add(_secondSemesterCreditUnits[eachCourse]*0);
            _allGrades.add(0);
            print(_secondSemesterGrades[eachCourse]);
          }
        }
        setState((){
              int creditUnitSum = _secSemCreditUnit.reduce((a,b)=>a+b);
                print(creditUnitSum);
                double getSCGPA = getSecSemMultiples.reduce((a, b) => a + b)/creditUnitSum;
                _secondSgpa = f.format(getSCGPA);
                print("SECOND SGPA $_secondSgpa");
            });
      }

      if(_hasGpa) setState((){
            int creditUnitSum = _allCourseUnits.reduce((a,b)=>a+b);
              print(creditUnitSum);
              double getCGPA = getMultiples.reduce((a, b) => a + b)/creditUnitSum;
              _gpa = f.format(getCGPA);
              print("GPA $_gpa");
            });

      print([currentSemester][0]['courses']);
      setState(() {
        _courses = true;
      });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.black
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 35,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.arrow_back, color: Colors.black),),
                  ),
                  Text('${global.allRecords[global.indexofSelectedRecord].level} level', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)),
                  SizedBox(width: 35,)
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right:15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15)
              ),
              child: DropdownButtonHideUnderline(
                        child: 
                          new DropdownButton<String>(
                                  value: _selectedSem,
                                  hint: Text("First Semester"),
                                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                                  onChanged: (newValue) {
                                    // print(global.allRecords[global.indexofSelectedRecord].semester);
                                    if(newValue == "First Semester"){
                                      setState(() {
                                        _first = true;
                                        currentSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['first'];
                                        print(currentSemester);
                                        print([currentSemester][0]['courses']);
                                      });
                                    }
                                    if(newValue == "Second Semester"){
                                      setState(() {
                                        _first = false;
                                        currentSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['second'];
                                        print(currentSemester);
                                        print([currentSemester][0]['courses'].length);
                                      });
                                    }
                                    setState(() {
                                        // global.choosenLevel = int.parse(newValue.substring(0,3));
                                          _selectedSem = newValue;
                                      });
                                  },
                                  items: _semesters.map((grade) {
                                    return DropdownMenuItem(
                                      child: new Text(grade),
                                      value: grade,
                                    );
                                  }).toList(),
                                  // items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  //   return new DropdownMenuItem<String>(
                                  //     value: value,
                                  //     child: new Text(value),
                                  //   );
                                  // }).toList(),
                                )
                        )
            ),
            _courses? Expanded(
              child: 
                Container(
                  child: 
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("COURSES"),
                            Text("CREDIT UNIT"),
                            Text("GRADES")
                          ],
                        ),
                      ),
                      Expanded(
                        child: 
                          ListView.builder(
                              itemCount: [currentSemester][0]['courses'].length > 0 ? [currentSemester][0]['courses'].length : 0,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE8E8E8),
                                    // borderRadius: BorderRadius.circular(15)
                                  ),
                                  // padding: EdgeInsets.only(left: 30, right: 30),
                                  margin: EdgeInsets.only(top: 10),
                                  child: 
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Expanded(
                                          child:
                                          Center(
                                            child: 
                                              Text("${[currentSemester][0]['courses'][index]}"),
                                          )
                                          ),
                                        Expanded(
                                          child:
                                            Center(
                                              child:
                                                Text("${[currentSemester][0]['creditUnits'][index]}"),
                                            )
                                        ),
                                        Expanded(
                                          child:
                                            Center(
                                              child:
                                                Text("${[currentSemester][0]['grades'][index]}"),
                                            )
                                          ),
                                    ],
                                    ),
                                  );
                                  }),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _first?
                                  Text("SGPA: $_firstSgpa", style: TextStyle(fontWeight: FontWeight.bold),):Text("SGPA: $_secondSgpa", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("GPA: $_gpa", style: TextStyle(fontWeight: FontWeight.bold),)
                          ],)
                        )

                    ]
                  )
                  )
              ) : Container()
          ],)
      ))
    );
  }
}