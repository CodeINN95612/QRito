// import 'dart:async';
//import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:qrito/data/generators/qr_code_generator.dart';
import 'package:qrito/data/models/qr_code.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    const String message = 'a qr code';
    const double size = 280;

    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 280,
                  child: QrCodeGenerator.generatePainter(
                      qrCode:
                          QrCode(size: const Size.square(size), data: message)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)
                  .copyWith(bottom: 40),
              child: const Text(message),
            ),
          ],
        ),
      ),
    );
  }
}
