import 'package:flutter/material.dart';
import 'package:house_sale/home_page.dart';

class SmallDetails extends StatelessWidget {
  final double? width;
  final IconData icon;
  final String? text;
  final double? height;
  const SmallDetails({this.width, required this.icon, this.text, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xfffefefe),
        border: Border.all(
          color: Color(0xffa8a8a8).withOpacity(0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Color(0xff5e632b),
            size: 15.0,
          ),
          Text(
            text!,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                color: primaryColor),
          )
        ],
      ),
    );
  }
}
