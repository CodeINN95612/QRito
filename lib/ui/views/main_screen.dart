import 'package:flutter/material.dart';
import 'package:qrito/data/generators/qr_code_generator.dart';
import 'package:qrito/data/models/qr_code.dart';
import 'package:qrito/ui/widgets/qr_list.dart';
import 'package:qrito/ui/widgets/qr_list_item.dart';

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
    var qrCodes = <QritoCode>[
      QritoCode(
          size: const Size.square(size), data: message, description: message)
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("QRito"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: Material(child: QrList(qrCodes: qrCodes)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Add your action logic here
          print('Add button pressed!');
        },
      ),
    );

    // return Material(
    //   // color: Colors.white,
    //   child: SafeArea(
    //     child: Column(
    //       children: [
    //         Expanded(
    //           child: Center(
    //             child: SizedBox(
    //               width: 280,
    //               child: QrCodeGenerator.generatePainter(
    //                   qrCode: QritoCode(
    //                       size: const Size.square(size),
    //                       data: message,
    //                       description: message)),
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)
    //               .copyWith(bottom: 40),
    //           child: const Text(message),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
