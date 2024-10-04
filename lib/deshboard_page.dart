import 'package:flutter/material.dart';
import 'package:untitled/widgets/category_container.dart';
import 'package:untitled/widgets/excercise_container.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
                ],
              ),
            ),
            const SizedBox(height: 10),

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
                            'Category',
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
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CategoryContainer(
                                  text: 'Relationship',
                                  color: Color(0xffA56EFC)),
                              SizedBox(height: 15),
                              CategoryContainer(
                                  text: 'Education',
                                  color: Color(0xffFF9567)),
                            ],
                          ),
                          Column(
                            children: [
                              CategoryContainer(
                                  text: 'Career',
                                  color: Color(0xff4CB5EF)),
                              SizedBox(height: 15),
                              CategoryContainer(
                                  text: 'Other',
                                  color: Color(0xffF96485)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Consultant',
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
                                title: 'M Musa Khan',
                                icon: Icons.person,
                                subTitle: '16 Excercise',
                                color: Color(0xffF78556)),

                            ExcerciseContainer(
                                title: 'Asif App Developer',
                                icon: Icons.person,
                                subTitle: 'Education',
                                color: Color(0xffF78556)),
                            ExcerciseContainer(
                                title: 'Umair App Developer',
                                icon: Icons.person_2,
                                subTitle: 'Education',
                                color: Color(0xff2B80BE)),
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
