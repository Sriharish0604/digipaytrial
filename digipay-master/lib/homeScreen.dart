import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
//import 'package:myapp/login/register.dart';
//import 'package:myapp/dashboard.dart';
//import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:digi/otp.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  String _userId;
  String _password;
  @override
  void initState(){
    super.initState();
  

  }
  void dispose(){
  
    super.dispose(); 
  }
  void _submit(){
    final form = formKey.currentState;
    if(form.validate()){
      form.save();
      performLogin();
    }
    
  }
  
  void performLogin(){
    //getData();
    Navigator.push(context, MaterialPageRoute(builder: (context)=> otp()));
    
  }
  Widget build(BuildContext context){
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        title: new Text("Forgot password"),
      ),
      body: new Padding( 
        padding: const EdgeInsets.all(20.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: "Enter phone number"),
                onSaved: (val)=> _userId = val,
              ),
              
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new RaisedButton( 
                child: new Text("Submit"),
                onPressed: performLogin,
              ),
              
            ]
          ),

        ),

      )
       
    );
  }
}