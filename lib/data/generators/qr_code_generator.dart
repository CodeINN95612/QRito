import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrito/data/models/qr_code.dart' as qr;

class QrCodeGenerator {
  static CustomPaint generatePainter({required qr.QrCode qrCode}) {
    return CustomPaint(
      size: qrCode.size,
      painter: QrPainter(
          data: qrCode.data,
          version: QrVersions.auto,
          eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square, color: Color(0xff128760)),
          dataModuleStyle: const QrDataModuleStyle(
            dataModuleShape: QrDataModuleShape.square,
            color: Color(0xff1a5441),
          )),
    );
  }
}
