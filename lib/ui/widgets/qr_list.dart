import 'package:flutter/material.dart';
import 'package:qrito/data/models/qr_code.dart';
import 'package:qrito/ui/widgets/qr_list_item.dart';

class QrList extends StatelessWidget {
  final List<QritoCode> qrCodes;
  const QrList({super.key, required this.qrCodes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: qrCodes.length,
        itemBuilder: (ctx, i) {
          return QrListItem(qrCode: qrCodes[i]);
        });
  }
}
