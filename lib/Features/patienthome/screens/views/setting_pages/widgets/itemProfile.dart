import 'package:flutter/material.dart';

Widget itemProfile(
    String title, String subtitle, IconData iconData, Function onPressed) {
  return Container(
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        stops: [0.02, 0.02],
        colors: [Color.fromRGBO(14, 92, 109, 1), Colors.white],
      ),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Colors.black.withOpacity(.1),
          spreadRadius: 2,
          blurRadius: 5,
        ),
      ],
    ),
    child: ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(subtitle),
      leading: Icon(
        iconData,
        size: 30,
        color: const Color.fromRGBO(14, 92, 109, 1),
      ),
      trailing: IconButton(
        iconSize: 15,
        icon: const Icon(Icons.arrow_forward_ios_sharp),
        onPressed: onPressed(),
      ),
    ),
  );
}
