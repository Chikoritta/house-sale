import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:house_sale/widgets/custome_bottom_card.dart';
import 'package:house_sale/widgets/custome_card.dart';
import 'package:house_sale/widgets/custome_container.dart';
import 'package:house_sale/widgets/titles.dart';

const Color primaryColor = Color(0xff594546);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Color(0xffeef2f3)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                      color: primaryColor.withOpacity(0.35),
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    const Text(
                      'Greater Jakarta',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xffa8a8a8),
                    ),
                    Spacer(),
                    Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: const Border(
                          top: BorderSide(width: 5.5, color: Colors.white),
                          bottom: BorderSide(width: 5.5, color: Colors.white),
                          left: BorderSide(width: 5.5, color: Colors.white),
                          right: BorderSide(width: 5.5, color: Colors.white),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0.3,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0), //or 15.0
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            //color: Colors.lightBlue,
                            image: const DecorationImage(
                              image: AssetImage('assets/profile-pic4.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Titles(
                  text: 'Best Offers',
                  textSize: 22.0,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomeContainer(
                        cardChild: CustomeCard(
                          image: 'assets/house2.jpg',
                          titleText: 'House of Any\'s',
                          subtitleText: '2,st.North Mandala, Greater Jakarta',
                        ),
                      ),
                      CustomeContainer(
                        cardChild: CustomeCard(
                          image: 'assets/autumn.jpg',
                          titleText: 'House of Escanor',
                          subtitleText: '5,st.South Mandala, Greater Jakarta',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const Text(
                      'Nearest by your location',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: primaryColor.withOpacity(0.35),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width - 40,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: CustomeBottomCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
