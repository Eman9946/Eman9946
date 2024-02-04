import 'package:flutter/material.dart';
import 'package:flutter_application_1/CreatScren.dart';
import 'package:flutter_application_1/Home%20Screen.dart';
import 'package:flutter_application_1/login_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          
        title: Text('تسجيل الدخول'),

       
      ),
      body: Center(
    
 child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: (value) {
                      // Handle username input
                    },
                    decoration: InputDecoration(labelText: 'اسم المستخدم'),
                  ),
                  TextField(
                    onChanged: (value) {
                      // Handle password input
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'كلمة المرور'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                    
                     (
                        LoginButtonPressed(
                          username: 'entered_username', // Replace with the actual entered username
                          password: 'entered_password', // Replace with the actual entered password
                        ),
                      );
                    },



        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text('تسجيل الدخول'),
        ),
      ),
            

            SizedBox( height: 20,),




 ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreatScren()),
            );
          },
          child: Text("انشاء حساب")
         ),

            
                ]  
 ),



      ),
    );
  }
}