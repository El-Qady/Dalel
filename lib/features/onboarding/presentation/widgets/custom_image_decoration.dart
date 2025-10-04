import 'package:flutter/material.dart';

class CustomImageDecoration extends StatelessWidget {
  const CustomImageDecoration({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 290,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
