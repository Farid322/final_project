import 'package:flutter/material.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/otp_form.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});
  static String id = 'CheckEmail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 120),
        child: Column(
          children: [
            Image.asset('assets/images/illustration.png'),
            const SizedBox(
              height: 30,
            ),
            Text(
              S.of(context).CheckYourEmail,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              S.of(context).Wevesent,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
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
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                OtpForm(),
                SizedBox(
                  width: 5,
                ),
                OtpForm(),
                SizedBox(width: 5),
                OtpForm(),
                SizedBox(width: 5),
                OtpForm()
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: isArabic() ? (100) : (50)),
              child: Row(
                children: [
                  Text(
                    S.of(context).Ididnt,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.699999988079071)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    S.of(context).Resend,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
