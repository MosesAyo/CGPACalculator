import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart' as global;

class SelectedRecord extends StatefulWidget{
  @override
  _SelectedRecord createState()=> new _SelectedRecord();
}

class _SelectedRecord extends State<SelectedRecord> {
  List<String> _semesters = ["First Semester", "Second Semester"];
  String _selectedSem;
  Map currentSemester;
  bool _courses = false;

  @override
  void initState(){
    this._getData();
  } 
  _getData() async {
    setState(() {
      currentSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['first'];
      print([currentSemester][0]['courses'].length);
    });
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
                                        currentSemester = [global.allRecords[global.indexofSelectedRecord].semester][0]['first'];
                                        print(currentSemester);
                                        print([currentSemester][0]['courses'].length);
                                      });
                                    }
                                    if(newValue == "Second Semester"){
                                      setState(() {
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