import 'package:flutter/material.dart';
import 'package:house_sale/home_page.dart';

class Titles extends StatelessWidget {
  final String? text;
  final double? textSize;
  const Titles({this.text, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text!,
          style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: textSize),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          padding: EdgeInsets.only(
            left: 3,
            right: 3,
          ),
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.35),
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              '8',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_horiz,
          color: primaryColor.withOpacity(0.35),
        ),
      ],
    );
  }
}
