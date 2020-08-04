import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'register.dart';
import 'records.dart';

import 'global.dart' as global;

class Login extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {

  String email = "";
  String password;
  String token;
  String _loginError = "";
  String _loginSuccess = "";
  bool _emailIsValid = false;
  bool _passwordIsValid = false;

  

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
                              Text("Login " ,style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),),
                              SizedBox(height: 5,),
                              Text("Please log in to your account" ,style: TextStyle(color: Colors.grey[600]),) ,

                            ],
                          )
                          ),
                          
                        Container(
                          child: new TextField(
                            autocorrect: false,
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

                        // Next line tells the user if there is an error and what the error is >>>>>>>>>>>>>>>>>>>>>>>>>>
                        // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                        _loginError!=""?Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: 
                            Text(_loginError, style: TextStyle(color: Color(0xffff0000)),)
                          ):Container(),

                        Container(
                          margin: EdgeInsets.only(top:30),
                          height: 45,
                          width: double.infinity,
                          child: RaisedButton(
                                  onPressed:() {
                                    login(email,password);
                                    },
                                  // (){
                                  //   Navigator.pushNamedAndRemoveUntil(context, '/records', (Route<dynamic> route) => false);
                                  // },
                                  color: Color(0xff00a57c),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: 
                                    Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ,)
                        ),
                        _loginSuccess!=""?Container(
                          margin: EdgeInsets.only(top:20),
                          alignment: Alignment.center,
                          child: 
                            Text(_loginSuccess, style: TextStyle(color: Color(0xff00a57c))),
                          ): Container()
                        
                      ]
                    ),
                    ),
                ),
                Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Text("Don't have an account? "),
                            FlatButton(
                              onPressed: (){
                                Navigator.pop(context);
                              }, 
                              child: Text("Register", style: TextStyle(color: Color(0xff00a57c), fontWeight: FontWeight.bold),
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


  Future fetchCurrentUser() async {
    final response = await http.get(
      'https://murmuring-caverns-42248.herokuapp.com/api/users/current',
      headers: {HttpHeaders.authorizationHeader: "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVmMjBlNmIyYjMyZTEzMjJjODVlZTNmZiIsIm5hbWUiOiJTdHVkZW50IE1vc2VzIiwiaWF0IjoxNTk2MjUxNzYwLCJleHAiOjE1OTYyNTUzNjB9.qo03G-0TaNtlTPzNsyychtqrjUB9A_yKjTrZvqzXFbg"},
    );
    final responseJson = json.decode(response.body);
    print(responseJson);
    print("StatusCode "+response.statusCode.toString());
    // CurrentUser.fromJson(responseJson);
    if (response.statusCode == 200){
      return Navigator.pushNamedAndRemoveUntil(context, '/records', (Route<dynamic> route) => false);
    }
  }

  Future<http.Response> login(String email, String password) async {
    // email = 'studentmoses@email.com';
    // password = '09876543';
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if(!emailValid){
      setState((){
        _loginError = "Enter a valid email";
      });
    }
    if(emailValid && password.length < 6){
      setState((){
        _loginError = "Password cannot be less than 6 characters";
      });
    }

    if (emailValid && password.length>=6){
        List responseObject = [];
        final response = await http.post(
            'https://murmuring-caverns-42248.herokuapp.com/api/users/login',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'email': email,
              'password': password,
            }),
          );
        if (response.statusCode == 200){
          setState(() {
            _loginError = "";
            _loginSuccess = "Success!";
          });

          responseObject.add(json.decode(response.body));
          print(response.statusCode);
          setState(() {
            global.token = responseObject[0]['token'];
          });
          Navigator.pushNamedAndRemoveUntil(context, '/records', (Route<dynamic> route) => false);

        }else if (response.statusCode == 404){
          setState(() {
            _loginSuccess = "";
            _loginError = "User not found.";
          });
        }else if(response.statusCode == 400){
          var error = response.body;
            print(error);
          setState(() {

            _loginSuccess = "";
            _loginError = "Password incorrect.";
          });
        }
        // responseObject.add(json.decode(response.body));
        // print(global.token);
        print(json.decode(response.body));
        
    }

}

}


class CurrentUser {
  final String id;
  final String username;
  final String email;

  CurrentUser({this.username, this.id, this.email});

  factory CurrentUser.fromJson(Map<String, dynamic> json) {
    return CurrentUser(
      id: json['id'],
      username: json['name'],
      email: json['email'],
    );
  }
}