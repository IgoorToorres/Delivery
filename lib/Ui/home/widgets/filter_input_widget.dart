import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:flutter/material.dart';

class FilterInputWidget extends StatelessWidget {
  const FilterInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: 'O que você quer comer hoje?',
        labelStyle: const TextStyle(color: Colors.white70),
        hintText: 'input',
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon: const Icon(Icons.search, color: Colors.white70),
        filled: true,
        fillColor: AppColors.brackgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white70),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
      ),
      cursorColor: Colors.white70,
    );
  }
}
