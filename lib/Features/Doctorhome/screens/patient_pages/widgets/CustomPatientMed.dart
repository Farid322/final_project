import 'package:flutter/material.dart';

class CustomPatientMedicine extends StatelessWidget {
  const CustomPatientMedicine({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 355,
        height: 63,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color.fromARGB(39, 10, 10, 1)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              width: 240,
            ),
            const Icon(
              Icons.edit,
              color: Color(0xFF0E5C6D),
            )
          ],
        ),
      ),
    ]);
  }
}
