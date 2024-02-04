import 'package:flutter/material.dart';
import 'package:flutter_application_1/FreelancerDetails.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ماتحيرش"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkersListScreen()),
              );
            },
            child: Text("سباك"),
          ),
        ]
          ),
       
      );
    
}
}