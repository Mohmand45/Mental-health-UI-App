import 'package:flutter/material.dart';

class ChatToday extends StatelessWidget {
  const ChatToday({super.key});

  @override
  Widget build(BuildContext context) {
    return       Row(
      children: [
        Expanded(
          child: Container(
            height: 1.0, // Adjust the height of the horizontal line
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 2),
          decoration: BoxDecoration(
              color: const Color(0xffF2F7FF),
              borderRadius: BorderRadius.circular(10)
          ),
          child: const Text(
            'Today',
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xff8A9ABE),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 10,
            height: 1.0, // Adjust the height of the horizontal line
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
          ),
        ),
      ],
    );
  }
}
