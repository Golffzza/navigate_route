import 'package:flutter/material.dart';
import 'package:navigate_route/screens/data_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final message = context.watch<DataProvider>().message;

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ✅ แสดงข้อความที่มาจาก Provider
            Text(message, style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 6),
            ElevatedButton(
              onPressed: () {
                context.read<DataProvider>().setMessage(
                  "this is data from detail page",
                );
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
