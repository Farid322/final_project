import 'package:flutter/material.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/otp_form.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});
  static String id=  'CheckEmail';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 120),
        child: Column(
          children: [
              Image.asset('assets/images/illustration.png'),
              const SizedBox(
                height: 38,
              ),
                const Text(
                 'Check Your Email',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),

                     const Text(
                 'We’ve sent a code to',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                     const Text(
                 'Laraalaa22@gamil.com',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
                  ),

                  

                  const Row(
                    children: [
                      OtpForm(),
                      SizedBox(
                        width: 5,
                      ),
                      OtpForm(),
                       SizedBox(
                        width: 5),
                      OtpForm(),
                  SizedBox(
                        width: 5),
                        OtpForm()
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(33),
                    child: Row(
                      children: [
                        Text('I didn’t receive a code',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.699999988079071)
                        ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Resend',
                        style: TextStyle(
                          color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                  )

          ],
        ),
      ),
    );
  }
}