import 'package:flutter/material.dart';

class DataTypeScreen extends StatefulWidget {
  const DataTypeScreen({super.key});

  @override
  State<DataTypeScreen> createState() => _DataTypeScreenState();
}

class _DataTypeScreenState extends State<DataTypeScreen> {
  int counter = 0;
  String name = 'Flutter';
  double price = 9.99;
  List<int> age = [1, 2, 3, 4, 5];
  bool isAlive = true;

  Map<String, dynamic> user = {
    'name': 'faraz',
    'age': 22,
    'city': 'lahore',
    'role': 'admin',
    'languages': ['flutter', 'dart'],
    'isAlive': true,
  };

  @override
  Widget build(BuildContext context) {
    age.add(22);
    age.remove(2);
    bool contains = false;
    if (age.isNotEmpty) {
      contains = false;
    } else {
      contains = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Data Type'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          // Text(age.toString()),
          // Text(name),
          // Text(isAlive.toString()),
          // Text('The Price of this product $price'),
          Text('The age of person is $contains'),
          // Text('THe data of user is ${user['languages'][0]}'),
        ],
      ),
    );
  }
}
