import 'package:flutter/material.dart';
import 'package:qrito/data/models/qr_code.dart';

class QrListItem extends StatelessWidget {
  final QritoCode qrCode;
  const QrListItem({super.key, required this.qrCode});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.qr_code_2,
        size: 50,
      ),
      title: Text(qrCode.description),
      subtitle: Text(qrCode.data),
      onTap: () {
        return;
      },
    );
  }
}
