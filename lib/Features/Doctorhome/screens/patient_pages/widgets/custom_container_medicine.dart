import 'package:flutter/material.dart';

class CustomMedicine extends StatelessWidget {
  CustomMedicine({super.key, required this.text, this.controller});
  final String text;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.edit,
                color: Color.fromARGB(151, 0, 0, 0),
              ),
              hintText: text,
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
    ]);
  }
}
