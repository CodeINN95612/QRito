import 'package:flutter/material.dart';

import 'ui/views/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRito',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: true,
      home: const MainScreen(),
    );
  }
}
