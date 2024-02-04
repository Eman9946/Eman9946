import 'package:flutter/material.dart';
import 'package:flutter_application_1/Freelancers%20.dart';

class WorkersListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('استعراض العمال'),
      ),
      body: ListView(
        children: [
          WorkerCard(name: 'أحمد', category: 'سباك'),
          WorkerCard(name: 'محمد', category: 'سباك'),
          // Add more worker cards as needed
        ],
      ),
    );
  }
}

class WorkerCard extends StatelessWidget {
  final String name;
  final String category;

  WorkerCard({required this.name, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text('التصنيف: $category'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WorkerDetailsScreen(name: name, category: category)),
          );
        },
      ),
    );
  }
}
