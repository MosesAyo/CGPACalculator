import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override 
  _Home createState() => new _Home();
}

class _Home extends State<Home> {

  //  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _grades = ['A', 'B', 'C', 'D', 'E', 'F']; // Option 2
  String _selectedGrades; // Option 2

  String _selectedGrade2;
  String _selectedGrade3;
  String _selectedGrade4;
  String _selectedGrade5;
  String _selectedGrade6;
  String _selectedGrade7;
  String _selectedGrade8;
  String _selectedGrade9;
  String _selectedGrade10;
  String _selectedGrade11;
  String _selectedGrade12;
  String _selectedGrade13;
  String _selectedGrade14;
  String _selectedGrade15;

  int credit_unit = 0;
  int _creditUnit1 =0;
  int _creditUnit2 =0;
  int _creditUnit3 =0;
  int _creditUnit4 =0;
  int _creditUnit5 =0;
  int _creditUnit6 =0;
  int _creditUnit7 =0;
  int _creditUnit8 =0;
  int _creditUnit9 =0;
  int _creditUnit10 =0;
  int _creditUnit11 =0;
  int _creditUnit12 =0;
  int _creditUnit13 =0;
  int _creditUnit14 =0;
  int _creditUnit15 =0;

  int _courseMult1=0;
  int _courseMult2=0;
  int _courseMult3=0;
  int _courseMult4=0;
  int _courseMult5=0;
  int _courseMult6=0;
  int _courseMult7=0;
  int _courseMult8=0;
  int _courseMult9=0;
  int _courseMult10=0;
  int _courseMult11=0;
  int _courseMult12=0;
  int _courseMult13=0;
  int _courseMult14=0;
  int _courseMult15=0;

  int _grade1=0;
  int _grade2=0;
  int _grade3=0;
  int _grade4=0;
  int _grade5=0;
  int _grade6=0;
  int _grade7=0;
  int _grade8=0;
  int _grade9=0;
  int _grade10=0;
  int _grade11=0;
  int _grade12=0;
  int _grade13=0;
  int _grade14=0;
  int _grade15=0;





  double cgpa = 0.0;
  double gpa = 0.0;
  int totalCreditUnit = 0;

  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  TextEditingController nameController = TextEditingController();

  void compute() {
  // super.initState();    
    
    _courseMult1 = credit_unit * _grade1;
    _courseMult2 = _creditUnit2 * _grade2;
    _courseMult3 = _creditUnit3 * _grade3;
    _courseMult4 = _creditUnit4 * _grade4;
    _courseMult5 = _creditUnit5 * _grade5;
    _courseMult6 = _creditUnit6 * _grade6;
    _courseMult7 = _creditUnit7 * _grade7;
    _courseMult8 = _creditUnit8 * _grade8;
    _courseMult9 = _creditUnit9 * _grade9;
    _courseMult10 = _creditUnit10 * _grade10;
    _courseMult11 = _creditUnit11 * _grade11;
    _courseMult12 = _creditUnit12 * _grade12;
    _courseMult13 = _creditUnit13 * _grade13;
    _courseMult14 = _creditUnit14 * _grade14;

    double gp = (_courseMult1+_courseMult2+_courseMult3+_courseMult4+_courseMult5+_courseMult6+_courseMult7+_courseMult8+_courseMult9+_courseMult10+_courseMult11+_courseMult12+_courseMult13+_courseMult14)/totalCreditUnit;
    String reshape = gp.toString();
    print(reshape.length);
    if (reshape.length>=4){
      String clean = reshape.substring(0,4);
      setState((){
        cgpa = double.parse(clean.toString());
      });
    }else{
      setState((){
      cgpa = double.parse(reshape.toString());
    });
    }
}

  void addItemToList(){
    setState(() {
      names.insert(0,"Hi");
      msgCount.insert(0, 0);
    });
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00a57c),
        title: Text("CGPA Calculator", style: TextStyle(color: Colors.white),)
      ),
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

                              // ListView.builder(
                              //   padding: const EdgeInsets.all(8),
                              //   itemCount: names.length,
                              //   itemBuilder: (BuildContext context, int index) {
                              //     return Container(
                              //       height: 50,
                              //       margin: EdgeInsets.all(2),
                              //       color: msgCount[index]>=10? Colors.blue[400]:
                              //         msgCount[index]>3? Colors.blue[100]: Colors.grey,
                              //       child: Center(
                              //         child: Text('${names[index]} (${msgCount[index]})',
                              //           style: TextStyle(fontSize: 18),
                              //         )
                              //       ),
                              //     );
                              //   }
                              // ),
                            
                            ListView(
                                children: <Widget>[
                                  SizedBox(height: 10),
                    // First Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (credit_unit >=2){
                                                  setState(() {
                                                    credit_unit--;
                                                  });

                                                  setState((){
                                                    totalCreditUnit--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$credit_unit",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState(() {
                                                  totalCreditUnit++;
                                                });
                                                setState(() {
                                                  credit_unit++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrades,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrades = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade1=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade1=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade1=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade1=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade1=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade1=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),
                            
                            SizedBox(height: 15),

                            // Second Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (credit_unit >=2){
                                                  setState(() {
                                                    _creditUnit2--;
                                                  });
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  compute();
                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit2",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit2++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade2,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade2 = newValue;
                                                    });
                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade2=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade2=4;
                                                      });
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade2=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade2=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade2=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade2=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),



                                        SizedBox(height: 15),
                                  // Third Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit3 >=2){
                                                  setState(() {
                                                    _creditUnit3--;
                                                  });
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  compute();
                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit3",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit3++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade3,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade3 = newValue;
                                                    });
                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade3=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade3=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade3=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade3=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade3=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade3=0;
                                                      });
                                                      compute();
                                                    }

                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),








                                          SizedBox(height: 15),
                                  // Fourth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit4 >=2){
                                                  setState(() {
                                                    _creditUnit4--;
                                                  });
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit4",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit4++;
                                                });

                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade4,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade4 = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade4=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade4=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade4=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade4=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade4=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade4=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),





                                SizedBox(height: 15),
                                  // Third Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit5 >=2){
                                                  setState(() {
                                                    _creditUnit5--;
                                                  });
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit5",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit5++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade5,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade5 = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade5=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade5=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade5=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade5=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade5=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade5=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),



                                SizedBox(height: 15),
                                  // Fourth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit6 >=2){
                                                  setState(() {
                                                    _creditUnit6--;
                                                  });
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit6",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit6++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade6,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade6 = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade6=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade6=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade6=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade6=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade6=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade6=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),





                                SizedBox(height: 15),
                                  // Fifth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit7 >=2){
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  setState(() {
                                                    _creditUnit7--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit7",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit7++;
                                                });

                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade7,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade7 = newValue;
                                                    });
                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade7=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade7=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade7=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade7=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade7=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade7=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),



                            SizedBox(height: 15),
                             // Sixth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit8 >=2){
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  setState(() {
                                                    _creditUnit8--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit8",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit8++;
                                                });

                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade8,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade8 = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade8=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade8=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade8=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade8=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade8=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade8=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),
                                  


                            SizedBox(height: 15),
                             // Eigth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit9 >=2){
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  setState(() {
                                                    _creditUnit9--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit9",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit9++;
                                                });

                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade9,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade9 = newValue;
                                                    });
                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade9=5;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade9=4;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade9=3;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade9=2;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade9=1;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade9=0;
                                                      });

                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),




                            SizedBox(height: 15),
                             // Nineth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit10 >=2){
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  setState(() {
                                                    _creditUnit10--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit10",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit10++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade10,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade10 = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade10=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade10=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade10=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade10=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade10=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade10=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),

                                
                            SizedBox(height: 15),
                             // Tenth Row ......................................................................................
                    // ......................................................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit11 >=2){
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  setState(() {
                                                    _creditUnit11--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit11",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit11++;
                                                });
                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade11,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selectedGrade11 = newValue;
                                                    });

                                                    if (newValue== 'A'){
                                                      setState(() {
                                                        _grade11=5;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade11=4;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade11=3;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade11=2;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade11=1;
                                                      });
                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade11=0;
                                                      });
                                                      compute();
                                                    }
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],),
                                  



                            SizedBox(height: 15),
                            // Last Row  ...........................................................
                            // ........................................................................
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        // decoration: BoxDecoration(color: Colors.grey),
                                        child: new TextField(
                                          decoration: new InputDecoration(
                                              hintText: 'Course Code',
                                              labelStyle: new TextStyle(
                                                  color: const Color(0xFF000000),

                                              )
                                          ),

                                        ),
                                        )
                                      ),
                                    Expanded(
                                    child: 
                                    Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                if (_creditUnit12 >=2){
                                                  setState((){
                                                    totalCreditUnit--;
                                                  });
                                                  setState(() {
                                                    _creditUnit12--;
                                                  });

                                                  compute();

                                                }
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.remove),                                          )
                                            ),
                                            Text(
                                              "$_creditUnit12",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
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
                                            height: 30,
                                            width: 30,
                                            child: FlatButton(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              padding: EdgeInsets.all(0),
                                              onPressed: (){
                                                setState((){
                                                    totalCreditUnit++;
                                                  });
                                                setState(() {
                                                  _creditUnit12++;
                                                });

                                                compute();
                                              },
                                              color: Colors.white,
                                              child: Icon(Icons.add),                                          )
                                            )
                                        ],
                                      ),
                                      )
                                    ),
                                    Expanded(
                                    child: Container(
                                      // decoration: BoxDecoration(color: Colors.grey),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left:20),
                                            child:
                                              DropdownButton(
                                                  // hint: Text('A'),
                                                  value: _selectedGrade12,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      if (newValue== 'A'){
                                                      setState(() {
                                                        _grade12=5;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'B'){
                                                      setState(() {
                                                        _grade12=4;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'C'){
                                                      setState(() {
                                                        _grade12=3;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'D'){
                                                      setState(() {
                                                        _grade12=2;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'E'){
                                                      setState(() {
                                                        _grade12=1;
                                                      });

                                                      compute();
                                                    }
                                                    if (newValue== 'F'){
                                                      setState(() {
                                                        _grade12=0;
                                                      });

                                                      compute();
                                                    }
                                                      // if (newValue=='A'){
                                                      //   double gp = (credit_unit * 5)/credit_unit;
                                                      //   setState(() {
                                                      //     cgpa = gp;
                                                      //   });
                                                      // }
                                                      // if (newValue=='C'){
                                                      //   double gp = (credit_unit * 3)/credit_unit;
                                                      //   setState(() {
                                                      //     cgpa = gp;
                                                      //   });
                                                      // }
                                                      // if (newValue=='D'){
                                                      //   double gp = (credit_unit * 2)/credit_unit;
                                                      //   setState(() {
                                                      //     cgpa = gp;
                                                      //   });
                                                      // }
                                                      // if (newValue=='E'){
                                                      //   double gp = (credit_unit * 1)/credit_unit;
                                                      //   setState(() {
                                                      //     cgpa = gp;
                                                      //   });
                                                      // }
                                                      // if (newValue=='F'){
                                                      //   double gp = 0;
                                                      //   setState(() {
                                                      //     cgpa = gp;
                                                      //   });
                                                      // }
                                                      if (newValue=='B'){
                                                        double gp = (credit_unit * 4)/credit_unit;
                                                        setState(() {
                                                          cgpa = gp;
                                                        });
                                                      }
                                                      _selectedGrade12 = newValue;
                                                    });
                                                  },
                                                  items: _grades.map((grade) {
                                                    return DropdownMenuItem(
                                                      child: new Text(grade),
                                                      value: grade,
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
                                    
                                  ],)
                                  
                                ],
                              ),
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
                        Text("$totalCreditUnit", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
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
                        Text("GPA", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("$gpa", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
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
                        Text("CGPA", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("$cgpa", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                      ],
                      ),
                  )
              ],),
            )
          ],
          )
        )
      );
  }
}