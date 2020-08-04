import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';
import 'global.dart' as global;

class AddRecord extends StatefulWidget{
  @override
  _AddRecord createState() => _AddRecord();
}

class _AddRecord extends State<AddRecord>{
  List<String> _levels = ['100 level', '200 level', '300 level', '400 level', '500 level'];
  String _currentlySelectedLevel;
  bool _showLevel = true;
  bool _showSemester = false;

  @override
  Widget build(BuildContext context){
    return Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child:
                 Container(
                        decoration: BoxDecoration(
                          color: Color(0x10000000)
                        ),
                        child: FlatButton(
                          splashColor: Colors.transparent,  
                          highlightColor: Colors.transparent, // makes highlight invisible too
                          onPressed: (){
                            // Navigator.pop(context);
                            },
                          child: 
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: 
                                    Text("Selecet level", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                  ),

                                // The next widget contains the level container .............
                               _showLevel ? Center(
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
                                    height: 200,
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(left:10, right: 10),
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0, 2), // changes position of shadow
                                            ),
                                          ]
                                        ),
                                        margin: EdgeInsets.only(right: 20, left: 20, top:40),
                                        height: 45,
                                        width: double.infinity,
                                        child: 
                                          DropdownButtonHideUnderline(
                                            child: 
                                              new DropdownButton<String>(
                                                      value: _currentlySelectedLevel,
                                                      hint: Text("level"),
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                            global.choosenLevel = int.parse(newValue.substring(0,3));
                                                              _currentlySelectedLevel = newValue;
                                                          });
                                                      },
                                                      items: _levels.map((grade) {
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
                                      Container(
                                        margin: EdgeInsets.only(top: 30),
                                        padding: EdgeInsets.only(left: 20, right: 20),
                                        height: 45,
                                        child: FlatButton(
                                          onPressed: (){
                                            if (_currentlySelectedLevel != null){
                                              setState(() {
                                                _showLevel = false;
                                                _showSemester = true;
                                              });

                                            }
                                          }, 
                                          color: Color(0xff00a57c),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text("Continue", style: TextStyle(color: Colors.white)),
                                              SizedBox(width: 10,),
                                              Icon(Icons.arrow_forward, color: Colors.white,)
                                            ],
                                          )
                                          )
                                      ),

                                      _currentlySelectedLevel ==null ? Container(margin:EdgeInsets.only(top: 5),child:Text('Please select a level')):Container()
                                    ],)
                                  )
                                ): Container(),


                                // Containers for selecting semester goes here.........

                                _showSemester ? Center(
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
                                    // height: 200,
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text('${global.choosenLevel} level', style: TextStyle(fontWeight: FontWeight.bold),)
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        padding: EdgeInsets.only(left: 20, right: 20),
                                        height: 45,
                                        child: FlatButton(
                                          onPressed: (){
                                            setState(() {
                                              global.choosenSemester = 1;
                                            });
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                                          }, 
                                          color: Color(0xffe3e3e3),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(
                                            child: Text("First Semester", style: TextStyle(color: Colors.black),),
                                          )
                                          )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        padding: EdgeInsets.only(left: 20, right: 20),
                                        height: 45,
                                        child: FlatButton(
                                          onPressed: (){
                                            setState(() {
                                              global.choosenSemester = 2;
                                            });
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                                          }, 
                                          color: Color(0xffe3e3e3),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(
                                            child: Text("Second Semester", style: TextStyle(color: Colors.black),),
                                          )
                                          )
                                      ),

                                      Container(
                                        // width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        child: 
                                        Container(
                                          width: 100,
                                          child: FlatButton(
                                          onPressed: (){
                                            setState(() {
                                              _showSemester = false;
                                              _showLevel = true;
                                            });
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(Icons.arrow_back, color: Colors.black, size: 20,),
                                              Text("back")
                                            ],
                                            ),
                                          ),
                                          )
                                      )

                                      
                                    ],)
                                  )
                                ): Container(),

                            ],)
                        )
                )
            );
  }
}