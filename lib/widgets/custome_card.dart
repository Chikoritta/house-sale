import 'package:flutter/material.dart';
import 'package:house_sale/home_page.dart';
import 'package:house_sale/widgets/price.dart';
import 'package:house_sale/widgets/small_details.dart';

class CustomeCard extends StatelessWidget {
  final String image;
  final String? titleText;
  final String? subtitleText;
  const CustomeCard({required this.image, this.titleText, this.subtitleText});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      //elevation: 1,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            height: 220,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Price(
                  text: '\$900',
                  width: 55,
                  height: 35,
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(titleText!,
                style: const TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.0)),
            subtitle: Text(subtitleText!,
                style: TextStyle(
                  color: Color(0xff2c2220).withOpacity(0.35),
                )),
          ),
          ButtonTheme(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SmallDetails(
                  width: 45.0,
                  height: 25.0,
                  icon: Icons.bed,
                  text: '6',
                ),
                SmallDetails(
                  width: 45.0,
                  height: 25.0,
                  icon: Icons.shower,
                  text: '4',
                ),
                SmallDetails(
                  width: 65.0,
                  height: 25.0,
                  icon: Icons.arrow_back_ios_new,
                  text: '2000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
