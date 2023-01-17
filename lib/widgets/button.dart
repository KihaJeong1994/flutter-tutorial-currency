import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color textColor;

  const Button({
    Key? key,
    required this.bgColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(90),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 45,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 22,
          ),
        ),
      ),
      // child: ElevatedButton(
      //   onPressed: () {},
      //   child: Text(
      //     text,
      //     style: TextStyle(
      //       color: textColor,
      //     ),
      //   ),
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: backgroundColor,
      //     shape: const StadiumBorder(),
      //     fixedSize: const Size(150, 50),
      //   ),
      // ),
    );
  }
}
