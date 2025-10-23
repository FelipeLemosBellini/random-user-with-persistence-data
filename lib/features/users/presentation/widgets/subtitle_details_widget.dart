import 'package:flutter/material.dart';

class SubtitleDetailsWidget extends StatelessWidget {
  final String text;

  const SubtitleDetailsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, bottom: 4),
      child: Text(text, style: _subTitleStyle),
    );
  }

  TextStyle get _subTitleStyle =>
      TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
}
