import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:http/http.dart' as http;


class Register extends StatefulWidget {
  @override
  _Register createState() => new _Register();
}

class _Register extends State<Register> {

  // The next four strings accepts whatever the user types
  // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  String fullname;
  String ndaNumber;
  String email;
  String password;

  String _registerError;
  bool _registerSuccess = false;

  showAlertDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: new Row(
          children: [
            CircularProgressIndicator(),
            Container(margin: EdgeInsets.only(left: 5),child:Text("Loading" )),
          ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: 
      SafeArea(
        child: 
        Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: 
                  Container(
                    // decoration: BoxDecoration(color: Colors.red),
                    // alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Container(
                          margin: EdgeInsets.only( bottom: 50),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Register" ,style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),),
                              SizedBox(height: 5,),
                              Text("Please fill the form" ,style: TextStyle(color: Colors.grey[600]),) ,

                            ],
                          )
                          ),
                        Container(
                          child: new TextField(
                                      decoration: new InputDecoration(
                                          labelText: "Full Name",
                                          labelStyle: new TextStyle(
                                              color: Colors.grey[500],
                                          ),
                                          focusedBorder:
                                            UnderlineInputBorder(
                                            borderSide: const BorderSide(color: Color(0xff00a57c), width: 2.0),
                                          ),
                                      ),
                                      onChanged: (val){
                                        setState((){
                                          fullname = val;
                                        });
                                      },

                                    ),
                        ),
                        Container(
                          child: new TextField(
                                      decoration: new InputDecoration(
                                          labelText: "NDA Number",
                                          labelStyle: new TextStyle(
                                              color: Colors.grey[500],
                                          ),
                                          focusedBorder:
                                            UnderlineInputBorder(
                                            borderSide: const BorderSide(color: Color(0xff00a57c), width: 2.0),
                                          ),
                                      ),
                                       onChanged: (val){
                                        setState((){
                                          ndaNumber = val;
                                        });
                                      },

                                    ),
                        ),
                        Container(
                          child: new TextField(
                                      decoration: new InputDecoration(
                                          labelText: 'Email',
                                          labelStyle: new TextStyle(
                                              color: Colors.grey[500],
                                          ),
                                          focusedBorder:
                                            UnderlineInputBorder(
                                            borderSide: const BorderSide(color: Color(0xff00a57c), width: 2.0),
                                          ),
                                      ),

                                       onChanged: (val){
                                        setState((){
                                          email = val;
                                        });
                                      },

                                    ),
                        ),
                        Container(
                          child: new TextField(
                                      obscureText: true,
                                      decoration: new InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: new TextStyle(
                                              color: Colors.grey[500],
                                          ),
                                          focusedBorder:
                                            UnderlineInputBorder(
                                            borderSide: const BorderSide(color: Color(0xff00a57c), width: 2.0),
                                          ),
                                      ),
                                       onChanged: (val){
                                        setState((){
                                          password = val;
                                        });
                                      },

                                    ),
                        ),

                        _registerError != null? Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                            child:
                              Text("$_registerError", style: TextStyle(color: Colors.red),),
                          )
                        ):Container(),
                        _registerSuccess ? Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                            child:
                              Text("You have been registered, login", style: TextStyle(color: Color(0xff00a57c)),),
                          )
                        ): Container(),
                        Container(
                          margin: EdgeInsets.only(top:40),
                          height: 45,
                          width: double.infinity,
                          child: RaisedButton(
                                  onPressed: (){registerUser(fullname, ndaNumber, email, password);},
                                  color: Color(0xff00a57c),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: 
                                    Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ,)
                        )
                        
                      ]
                    ),
                    ),
                ),
                Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Text("Already have an account? "),
                            FlatButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Login()));
                              }, 
                              child: Text("Signin", style: TextStyle(color: Color(0xff00a57c), fontWeight: FontWeight.bold),
                              )
                            )
                          ],),
                        )
            ],
          ),
          )
      )
    );
  }

  Future<http.Response> registerUser(String fullname, String ndaNumber, String email, String password) async {
    // email = 'studentmoses@email.com';
    // password = '09876543';
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    bool validateEntry = false;
    if (!(fullname == null || fullname== "" && ndaNumber == null || ndaNumber== "") ){
      validateEntry = true;
      print("Full name is Empty");
    }
    if (fullname == null || fullname== "" && ndaNumber == null || ndaNumber== "" ){
      setState(()=>{
        _registerError = "Fields cannot be empty"
      });
    }
    if(!emailValid){
      setState((){
        _registerError = "Enter a valid email";
      });
    }
    if(emailValid && password.length < 6){
      setState((){
        _registerError = "Password cannot be less than 6 characters";
      });
    }

    if (emailValid && validateEntry && password.length>=6){
        showAlertDialog(context);
        List responseObject = [];
        final response = await http.post(
            'https://murmuring-caverns-42248.herokuapp.com/api/users/register',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'fullname':fullname,
              'ndaNumber':ndaNumber,
              'email': email,
              'password': password,
            }),
          );
        if (response.statusCode == 200){
          setState(() {
            _registerError = "";
            _registerSuccess = true;
          });

          responseObject.add(json.decode(response.body));
          print(response.statusCode);
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));

        }
        else if(response.statusCode == 400){
            Navigator.pop(context);
            responseObject.add(json.decode(response.body));
            setState(() {
              _registerSuccess = false;

              // _loginSuccess = "";
              _registerError = "Email Already Exists";
            });
        }
        // responseObject.add(json.decode(response.body));
        // print(global.token);
        print(json.decode(response.body));
        print(response.statusCode);
    }

}
}