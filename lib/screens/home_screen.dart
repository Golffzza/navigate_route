import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/detail';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    // ส่ง arguments เป็น Map
                    'id': 'GOLF007',
                    'title': 'ข้อมูลจาก Named Route Args',
                  },
                );
              },
              child: const Text('Go to Detail Screen'),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,
                  arguments: {
                    // ส่ง arguments เป็น Map
                    'id': 'GOLF008',
                    'title': 'ข้อมูลจาก Named Route Args',
                  },
                );
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
