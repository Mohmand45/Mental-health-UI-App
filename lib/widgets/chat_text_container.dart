import 'package:flutter/material.dart';

class ChatTextContainer extends StatelessWidget {
  final String text;
  final String time;
  final Color color;
  const ChatTextContainer({super.key, required this.text, required this.time, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:color== const Color(0xffBCCAE7FF)? MainAxisAlignment.start:MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Container(
            height: 55,
            decoration:  BoxDecoration(
              borderRadius:  BorderRadius.only(
                topRight: const Radius.circular(10),
                topLeft: const Radius.circular(10),
                bottomLeft:color== const Color(0xffbccae7ff)? const Radius.circular(0):const Radius.circular(10),
                bottomRight: color== const Color(0xffBCCAE7FF)? const Radius.circular(10):const Radius.circular(0),
              ),
              color:color,
            ),
            child:  Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style:  TextStyle(
                          color: color== const Color(0xffBCCAE7FF)? const Color(0xff334269):Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        time,
                        style:  TextStyle(
                          fontSize: 12,
                          color:color== const Color(0xffBCCAE7FF)? const Color(0xff334269):Colors.white,
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
