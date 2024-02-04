
import 'package:flutter/material.dart';

class WorkerDetailsScreen extends StatelessWidget {
  final String name;
  final String category;

  WorkerDetailsScreen({required this.name, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل العامل'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الاسم: $name', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('التصنيف: $category', style: TextStyle(fontSize: 16.0)),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
