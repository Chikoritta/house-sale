import 'package:flutter/material.dart';
import 'package:house_sale/home_page.dart';
import 'package:house_sale/widgets/price.dart';
import 'package:house_sale/widgets/small_details.dart';

class CustomeBottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 3,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20, bottom: 10.0),
                height: 90,
                width: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('assets/down-house.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Price(
                      text: '\$900',
                      textSize: 8.0,
                      width: 35,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 200,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text('Beach Blossom',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 15.0)),
                  subtitle: Text(
                    '19,st.Hasyim Ashari, Greater \nJakarta',
                    style: TextStyle(
                      color: Color(0xff2c2220).withOpacity(0.35),
                      fontSize: 11.5,
                    ),
                  ),
                ),
                ButtonTheme(
                  child: Row(
                    children: const [
                      SmallDetails(
                        width: 45.0,
                        height: 25.0,
                        icon: Icons.bed,
                        text: '4',
                      ),
                      SmallDetails(
                        width: 45.0,
                        height: 25.0,
                        icon: Icons.shower,
                        text: '2',
                      ),
                      SmallDetails(
                        width: 55.0,
                        height: 25.0,
                        icon: Icons.arrow_back_ios_new,
                        text: '900',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
