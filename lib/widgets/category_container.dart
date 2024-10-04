import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final Color color;
  const CategoryContainer({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.width * 0.22,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [Color(0xffA56EFC), Color(0xffA56EFC)],
          colors: [color, color],
          begin: Alignment.centerRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      )),
    );
  }
}
