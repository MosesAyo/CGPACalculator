import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'global.dart' as global;
class ResetPasword extends StatefulWidget {
  @override
  _ResetPassword createState()=> new _ResetPassword();
}

class _ResetPassword extends State<ResetPasword> {
  bool _validToken = false;
  String _resetToken = "";
  String error = "";
  String password = "";
  String confirmPassword = "";
  String successMesssage = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: !_validToken ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text("We just sent a mail to ${global.emailRes}"),
              ),
              new TextField(
                    decoration: new InputDecoration(
                        labelText: 'Enter Token',
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
                        _resetToken = val;
                      });
                    },

                  ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  height: 40,
                  margin: EdgeInsets.only(top:10),
                  child: RaisedButton(
                    onPressed: _validateToken,
                    color: Color(0xff00a57c),
                    child: Text("Continue", style: TextStyle(color: Colors.white),)
                    ,),
                    ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text("Didn't recieve a mail? "),
                    FlatButton(
                      onPressed: resendToken,
                      child: Text("Resend"),)
                ],)
              ),
             error !="" ? Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("$error", style: TextStyle(color: Color(0xffff0000)),),
              ) : Container(),
          ],) :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Container(
                child: Text("Create A New Password", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              new TextField(
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
            new TextField(
              obscureText: true,
              decoration: new InputDecoration(
                  labelText: 'Confirm Password',
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
                  confirmPassword = val;
                });
              },
            ),

             Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  height: 40,
                  margin: EdgeInsets.only(top:10),
                  child: RaisedButton(
                    onPressed: _resetPassword,
                    color: Color(0xff00a57c),
                    child: Text("Submit", style: TextStyle(color: Colors.white),)
                    ,),
                    ),
            Container(
              margin: EdgeInsets.only(top:10),
              child: 
               Text("$error", style: TextStyle(color: Color(0xffff0000)),)
            )
          ],)
        )
        )
    );
  }

    Future _validateToken() async{
    setState(() {
        error = "";
      });
      if (_resetToken == ""){
        return (
          setState((){
            error = "Please enter a token";
          })
        );
      }

    final response = await http.post(
            'https://murmuring-caverns-42248.herokuapp.com/api/users/token',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'token': _resetToken,
            }),
          );
    print('Status code ${response.statusCode}');
    if (response.statusCode == 404){
      setState(() {
        _validToken = false;
        error = "Password reset token is invalid or has expired.";
      });
    }
    if (response.statusCode == 200){
      // Navigator.pushNamed(context, '/resetPassword');
      setState(() {
        _validToken = true;
        error = "";
      });
    }
  }

  Future _resetPassword() async{
    setState(() {
        error = "";
      });

    if (password != confirmPassword){
      return (
        setState((){
          error = "Passwords do not match";
        })
      );
    }

    if (password.length < 6){
      return (
        setState((){
          error = "Password cannot be less than six characters";
        })
      );
    }

    if(password == confirmPassword && password.length >= 6){
      final response = await http.post(
              'https://murmuring-caverns-42248.herokuapp.com/api/users/reset',
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: jsonEncode(<String, String>{
                'token': _resetToken,
                'password': password
              }),
            );
      print('Status code ${response.statusCode}');
      if (response.statusCode == 404){
        setState(() {
          _validToken = false;
          error = "Token is invalid or expired";
        });
      }
      if (response.statusCode == 200){
        Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> route) => false);

        setState(() {
          _validToken = true;
          error = "";
        });
      }
    }

  }

  Future resendToken() async{
    setState(() {
        error = "";
      });
    final response = await http.post(
            'https://murmuring-caverns-42248.herokuapp.com/api/users/forgot',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'email': global.emailRes,
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
        successMesssage = 'Sent Successfully';
      });
    }
  }
}