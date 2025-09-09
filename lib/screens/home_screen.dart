import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'itemId': 'Item-456',
                    'message': 'ข้อมูลผ่าน arguments',
                  },
                );
                print('ได้ค่ากลับมาคือ $result');
              },
              child: Text('Go to Detail Screen'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,
                  arguments: {
                    'itemId': 'Item-333',
                    'message': 'เข้าสู่หน้า Third Screen',
                  },
                );
                print('ได้ค่ากลับมาคือ $result');
              },
              child: Text('Go to thrid Srceen'),
            ),
          ],
        ),
      ),
    );
  }
}
