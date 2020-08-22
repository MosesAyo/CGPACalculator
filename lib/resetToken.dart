import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'global.dart' as global;

class ResetToken extends StatefulWidget {
  @override
  _ResetToken createState()=> new _ResetToken();
}

class _ResetToken extends State<ResetToken> {

  String email = "";
  String error ="";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.blue,
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20,),
                  child: Text("Forgot password?", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: new TextField(
                              decoration: new InputDecoration(
                                  labelText: 'Enter Email',
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
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 40,
                  margin: EdgeInsets.only(top:10),
                  child: RaisedButton(
                    onPressed: forgotPassword,
                    color: Color(0xff00a57c),
                    child: Text("Submit", style: TextStyle(color: Colors.white),)
                    ,),
                    ),
                
                error != "" ? Container(
                  margin: EdgeInsets.only(top:10),
                  child: Center(child:Text("$error", style: TextStyle(color: Color(0xffff0000)),))
                ): Container()
            ],),
          ),
        )
      ));
  }

  Future forgotPassword() async{
    setState(() {
        error = "";
      });

    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if(!emailValid){
      setState((){
        error = "Enter a valid email";
        return error;
      });
    }

    final response = await http.post(
            'https://murmuring-caverns-42248.herokuapp.com/api/users/forgot',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'email': email,
            }),
          );
    print('Status code ${response.statusCode}');
    if (response.statusCode == 404){
      setState(() {
        error = "User not found";
      });
    }
    if (response.statusCode == 200){
      setState(() {
        global.emailRes = email;
      });
      Navigator.pushNamed(context, '/resetPassword');
    }
  }
}