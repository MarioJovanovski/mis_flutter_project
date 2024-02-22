import 'package:flutter/material.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';

class TShadowStyle {
  static final veritaclProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}
