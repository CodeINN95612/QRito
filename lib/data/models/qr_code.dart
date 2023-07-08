import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QritoCode {
  final Size size;
  final String data;
  final String description;
  final QrEyeShape eyeShape;
  final Color eyeStyleColor;
  final QrDataModuleShape dataModuleShape;
  final Color dataModuleColor;
  QritoCode(
      {required this.size,
      required this.data,
      required this.description,
      this.eyeShape = QrEyeShape.square,
      this.eyeStyleColor = Colors.black,
      this.dataModuleShape = QrDataModuleShape.square,
      this.dataModuleColor = Colors.black});
}
