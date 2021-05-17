import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'MainApp.dart';
import 'dart:core';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  String value;
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Screen App"),
      // ),
      body: Padding( 
        padding: EdgeInsets.all(10),
            
        child: ListView(
          children: <Widget>[
            Container(
              alignment : Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 40),
              child: Text("SunberHub",
                style: TextStyle( 
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "http://sanberhub.com/wp-content/uploads/2020/10/sanberhub-300x165.jpg",
                height: 100,
                width: 100,

                ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),
                  labelText: "Username "                  
                ),
                onChanged: (text){
                  value = text;
                },
              ),
            ),
        
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(  
                  border: OutlineInputBorder(),
                  labelText: "Password"

                ),
                onChanged: (text){
                  value = text;
                }
                ,
              ),
            ),
            TextButton(
              onPressed: (){

              },
              child: Text("Forgot Password")),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(  
                style: raisedButtonStyle,
                child: Text("Login"),
                onPressed: (){ 
                  if(passwordController.text == "123456"){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=> 
                      new MainApp(
                        data: nameController.text,
                      )));
                  }else{
                    //print("password salah");
                     AlertDialog alert = AlertDialog(
                      title: Text("Info"),
                      content: Text("Gambar Berhasil Di Upload"),
                      actions: [
                        TextButton(
                            child: Text("OK"),
                            onPressed: () => Navigator.of(context).pop()),
                      ],
                    );                    
                  }
                }
              )
            ),

            Container(
              child: Row(
                children: <Widget>[
                    Text("   Does not have account?"),
                    TextButton(
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed:(){
                        
                      }
                    )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);