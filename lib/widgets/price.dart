import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final double? textSize;
  const Price({this.text, this.width, this.height, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5.0,
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black.withOpacity(0.2),
            ),
            child: Center(
              child: Text(text!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: textSize,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
