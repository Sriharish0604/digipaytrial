import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
//import 'package:myapp/login/register.dart';
//import 'package:myapp/dashboard.dart';
//import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:digi/homeScreen.dart';
import 'package:digi/login.dart';

//import 'package:myapp/globals.dart' as global;
class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return reset();
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}



class reset extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<reset> {
  List data;
  List data1;
   List userData;
   var flag =0;

  

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String _userId;
  String _password;


 
@override
  void initState(){
    super.initState();
  

  }
 

  @override
  void dispose(){
  
    super.dispose(); 
  }

//   Future<Post> fetchPost() async {
//   final response =
//       await http.get("http://192.168.43.202:8080/login");

//   if (response.statusCode == 200) {
//     // If server returns an OK response, parse the JSON.
//     return Post.fromJson(json.decode(response.toJson(response)));
//   } else {
//     // If that response was not OK, throw an error.
//     throw Exception('Failed to load post');
//   }
// }



  void _submit(){
    final form = formKey.currentState;
    if(form.validate()){
      form.save();
      performLogin();
    }
  }
  
  void performLogin(){
    //getData();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    
  }
  
  @override

  Widget build(BuildContext context){
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        title: new Text("Login Page"),
      ),
      body: new Padding( 
        padding: const EdgeInsets.all(20.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: "Enter new password"),
                onSaved: (val)=> _userId = val,
              ),
              new TextFormField(
                decoration: new InputDecoration(labelText: "New password"),
                validator: (val)=>val.length<1?'Password too short':null,
                onSaved: (val)=>_password=val,
                obscureText: true,
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new RaisedButton( 
                child: new Text("Reset"),
                onPressed: performLogin,
              ),
              
            ]
          ),

        ),

      )
       
    );
  }
}