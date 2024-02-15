import 'package:flutter/cupertino.dart';

import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class CustomTimer extends StatelessWidget {
  const CustomTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: TimerCountdown(
        enableDescriptions: true,
        timeTextStyle:
            const TextStyle(fontSize: 80, fontWeight: FontWeight.w500),
        format: CountDownTimerFormat.hoursMinutesSeconds,
        endTime: DateTime.now().add(
          const Duration(
            hours: 2,
            minutes: 0,
            seconds: 0,
          ),
        ),
        onEnd: () {
          print("Timer finished");
        },
      ),
    );
  }
}
