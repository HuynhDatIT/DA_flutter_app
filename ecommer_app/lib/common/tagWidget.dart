import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TagWidget({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    print(isSelected.toString());
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
