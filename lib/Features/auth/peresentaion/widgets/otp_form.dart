import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: 79.83,
        height: 63.86,
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          onSaved: (value) {},
          decoration: InputDecoration(
            hintText: '_',
            hintStyle: const TextStyle(
              color: Color(0xFF6A6A6A),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            filled: true,
            fillColor: const Color(0xFFF6F6F8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
          style: Theme.of(context).textTheme.titleLarge,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}