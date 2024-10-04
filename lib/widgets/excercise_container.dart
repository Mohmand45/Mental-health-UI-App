import 'package:flutter/material.dart';
import 'package:untitled/consultant_page.dart';

class ExcerciseContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subTitle;
  final Color color;

  const ExcerciseContainer(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  Consultant(
              name: title,
            )));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              // height: 65,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 5.0),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Icon(
                            icon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff334269),
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            subTitle,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff334269),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.hdr_strong_outlined,
                    color: Color(0xff334269),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
