import 'package:flutter/material.dart';
import 'package:graduation_project/views/forget_password.dart';
import 'package:graduation_project/views/sign_up_doctor.dart';



void main() {
  runApp( const Hemodialysis());
}
class Hemodialysis extends StatelessWidget {
  const Hemodialysis({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignUpdoctor(),

    );
  }
}