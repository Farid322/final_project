import 'package:flutter/material.dart';

Widget customMessanger(
    String title, String subtitle, String time, Image image) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 10, bottom: 15),
    child: Row(
      children: [
        SizedBox(height: 32, width: 32, child: image),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        time,
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        subtitle,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(53, 54, 79, 0.62)),
                        maxLines: 2,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
