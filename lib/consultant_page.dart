import 'package:flutter/material.dart';
import 'package:untitled/widgets/chat_text_container.dart';
import 'package:untitled/widgets/chat_today.dart';

class Consultant extends StatefulWidget {
  final String name;
  const Consultant({super.key, required this.name});
  @override
  State<Consultant> createState() => _ConsultantState();
}

class _ConsultantState extends State<Consultant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF267EBD),
        body: Column(
          children: [
            Container(
              color: Color(0xFF267EBD),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /// Starting Text
                            Text(
                              widget.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),

                            /// Date Text
                            Text(
                              '13 nov, 2023',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),

                        /// Notification Icon
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.call,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 29),

                    /// TextField of the page
                  ],
                ),
              ),
            ),

            /// White Container
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  // color: Colors.white,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: const [
                            ///Chat
                            ChatTextContainer(
                              text: 'Hi Umair how are you?',
                              time: '11:02',
                              color: Color(0xffBCCAE7FF),
                            ),
                            ChatTextContainer(
                              text: 'Hi Umair how are you?',
                              time: '11:02',
                              color: Color(0xFF267EBD),
                            ),
                            ChatTextContainer(
                              text: 'I am great, are you free today?',
                              time: '11:02',
                              color: Color(0xffBCCAE7FF),
                            ),

                            SizedBox(height: 20),

                            /// ChatToday
                            ChatToday(),

                            ChatTextContainer(
                              text: '😊😊😊😊',
                              time: '11:02',
                              color: Color(0xffBCCAE7FF),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // / TextField of the page
            Row(
              children: [
                Flexible(
                  child: Container(
                    // margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      // color: Color(0xffF2F7FF),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10, top: 10),
                            hintText: 'Write a message',
                            hintStyle: TextStyle(
                              color: Color(0xff8898BD),
                            ),
                            suffixIcon: Icon(
                              Icons.camera,
                              color: Color(0xff8898BD),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(right: 10),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xff267EBD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.mic,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
