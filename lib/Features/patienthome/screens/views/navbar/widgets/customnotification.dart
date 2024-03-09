import 'package:flutter/material.dart';

Widget customNotification(
    String title, String subtitle, Color color, String time) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 10, bottom: 15),
    child: Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: const Icon(
            Icons.notifications_none_outlined,
            textDirection: TextDirection.ltr,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
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
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
