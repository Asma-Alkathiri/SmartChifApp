import 'package:flutter/cupertino.dart';

String getOTP(
    TextEditingController num1,
    TextEditingController num2,
    TextEditingController num3,
    TextEditingController num4,
    TextEditingController num5,
    TextEditingController num6) {
  return num1.text + num2.text + num3.text + num4.text + num5.text + num6.text;
}
