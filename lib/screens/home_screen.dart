import 'package:flutter/material.dart';
import 'package:navigate_route/screens/data_provider.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final message = context.watch<DataProvider>().message;

    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                context.read<DataProvider>().setMessage(
                  "this is data from home page",
                );
                Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: const Text("Go to Detail Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
