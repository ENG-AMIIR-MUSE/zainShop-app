import 'package:ecomerce/constants/themes.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const ChipWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      avatar: Icon(icon),
    );
  }
}
