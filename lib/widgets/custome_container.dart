import 'package:flutter/material.dart';
import 'package:house_sale/widgets/custome_card.dart';
import 'package:house_sale/home_page.dart';

class CustomeContainer extends StatelessWidget {
  final Widget cardChild;
  const CustomeContainer({required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      width: MediaQuery.of(context).size.width - 40,
      height: MediaQuery.of(context).size.height / 2,
      child: cardChild,
    );
  }
}
