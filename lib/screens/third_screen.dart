import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/th';
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: Text('ThirdScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item ID: ${args['itemId']}'),
            Text('Massage: ${args['message']}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'กลับมาจาก Third Screen');
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}