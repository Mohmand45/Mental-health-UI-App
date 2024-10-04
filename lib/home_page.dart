import 'package:flutter/material.dart';
import 'package:untitled/widgets/emoji_container.dart';
import 'package:untitled/widgets/excercise_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF267EBD),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Starting Text
                          Text(
                            'Hi, Umair!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),

                          /// Date Text
                          Text(
                            '13 nov, 2023',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),

                  /// TextField of the page
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(height: 29),

                  /// How do you feel Text and Icon
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.hdr_strong_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  /// Emoji Container
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EmojiContainer(emoji: '😒', emojiText: 'Badly'),
                      EmojiContainer(emoji: '😊', emojiText: 'Fine'),
                      EmojiContainer(emoji: '😁', emojiText: 'Well'),
                      EmojiContainer(emoji: '😆', emojiText: 'Excellent'),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            /// White Container
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff334269),
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.hdr_strong_outlined,
                            color: Color(0xff334269),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: ListView(
                          children: const [
                            ExcerciseContainer(
                                title: 'Speaking Skills',
                                icon: Icons.favorite,
                                subTitle: '16 Excercise', color: Color(0xffF78556)),
                            ExcerciseContainer(
                                title: 'Reading speed',
                                icon: Icons.person,
                                subTitle: '16 Excercise', color: Color(0xff2B80BE)),

                            ExcerciseContainer(
                                title: 'Speaking Skills',
                                icon: Icons.hdr_strong_outlined,
                                subTitle: '16 Excercise', color: Color(0xffFA5A7D)),
                            ExcerciseContainer(
                                title: 'Speaking Skills',
                                icon: Icons.hdr_strong_outlined,
                                subTitle: '16 Excercise', color: Color(0xffF78556)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
