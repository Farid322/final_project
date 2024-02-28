import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 80,
              height: 24,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 251, 235, 1),
                  border: Border.all(
                    color: const Color.fromARGB(31, 255, 255, 255),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 1,
                  top: 1,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: color,
                            border: Border.all(
                              color: const Color.fromARGB(31, 255, 255, 255),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
