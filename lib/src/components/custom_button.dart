import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;

  const CustomButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.49,
      height: height * 0.07,
      color: Colors.grey,
    );
  }
}
