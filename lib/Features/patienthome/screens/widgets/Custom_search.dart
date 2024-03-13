import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
    required this.select,
    required this.doctor,
    required this.date,
  });
  final String select;
  final String doctor;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
        child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.edit,
                color: Color.fromARGB(151, 0, 0, 0),
              ),
              hintText: select,
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
        child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.health_and_safety_outlined,
                color: Color.fromARGB(151, 0, 0, 0),
              ),
              hintText: doctor,
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
        child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.calendar_month,
                color: Color.fromARGB(151, 0, 0, 0),
              ),
              hintText: date,
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
