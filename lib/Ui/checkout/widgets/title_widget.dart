import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 22,
            color: AppColors.highlightText,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
