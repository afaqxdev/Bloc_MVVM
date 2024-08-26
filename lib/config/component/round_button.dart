import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/config/colors/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.height,
      this.width,
      required this.title,
      required this.onPress});
  final String title;
  final double? height;
  final double? width;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height ?? 40,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            color: AppColor.buttonColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
