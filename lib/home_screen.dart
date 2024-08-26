import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 2'),
        backgroundColor: Colors.blue,
        centerTitle: false,
        leading: Icon(Icons.assignment_ind),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    print('My button is pressed');
                  },
                  child: Text(
                    'This is my text button',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.blue),
                    elevation:
                        MaterialStateProperty.resolveWith((states) => 20),
                  ),
                  onPressed: () {
                    print('my elevated button was pressed');
                  },
                  child: Text(
                    'This is my elevated button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Add')),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Ionicons.desktop_outline),
                    label: Text('Remove')),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Iconsax.lock),
                    label: Text('Add')),
                Row(
                  children: [
                    Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/images/flutter.png')),
                    Container(
                        height: 200,
                        width: 200,
                        child: Image.network(
                            'https://t4.ftcdn.net/jpg/03/47/13/43/360_F_347134350_dhjJjzA1fuGvXOyNgCJYfOEby04ljhEC.jpg'))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
