import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeRangePicker extends StatefulWidget {
  @override
  _TimeRangePickerState createState() => _TimeRangePickerState();
}

class _TimeRangePickerState extends State<TimeRangePicker> {
  TimeOfDay _fromTime = TimeOfDay(hour: 0, minute: 0);
  TimeOfDay _toTime = TimeOfDay(hour: 0, minute: 0);

  Future<void> _selectFromTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _fromTime,
    );

    if (pickedTime != null && pickedTime != _fromTime) {
      setState(() {
        _fromTime = pickedTime;
      });
    }
  }

  Future<void> _selectToTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _toTime,
    );

    if (pickedTime != null && pickedTime != _toTime) {
      setState(() {
        _toTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: ScreenUtil().setWidth(400),
        height: ScreenUtil().setHeight(100),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(241, 0245, 0249, 1),
        ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text(
                  'From',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  _fromTime.format(context),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                onTap: () => _selectFromTime(context),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5, right: 25, top: 10),
              child: Text(
                ':',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text(
                  'To',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  _toTime.format(context),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                onTap: () => _selectToTime(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
