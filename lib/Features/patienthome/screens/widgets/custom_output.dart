import 'package:flutter/material.dart';
import 'package:graduation_project/main.dart';

class CustomOutput extends StatelessWidget {
  const CustomOutput({
    super.key,
    required this.image,
    required this.head,
    required this.title,
    required this.color,
  });
  final String image;
  final String head;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 345,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: color,
                    ),
                    width: 57,
                    height: 60,
                    child: Image.asset(
                      image,
                      width: 57,
                      height: 68,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        right: isArabic() ? (0) : (55),
                        left: isArabic() ? (55) : (0),
                      ),
                      child: Text(
                        head,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        right: isArabic() ? (0) : (55),
                        left: isArabic() ? (55) : (0),
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock_clock,
                                size: 15,
                              ),
                              Text(
                                '12.00pm - 4.00pm',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_history,
                                size: 15,
                              ),
                              Text(
                                'New City Clinic',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                const Icon(Icons.more_vert)
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
