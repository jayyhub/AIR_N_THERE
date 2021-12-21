import 'package:air_n_there/screens/flights/my_flights.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//Atif Here... The error starts when you uncomment or import the above library and the line at 86 required this library
import 'package:air_n_there/screens/events/events_screen.dart';
import 'package:air_n_there/screens/Welcome/welcome_screen.dart';
import 'package:air_n_there/screens/flights/all_flights.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Container(
              color: Colors.white,
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      NavItem(
                        icon: "assets/icons/calendar.svg",
                        title: "Flights",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Flights(),
                              ));
                        },
                      ),
                      NavItem(
                        icon: "assets/icons/airplane.svg",
                        title: "Yours",
                        isActive: true,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyFlights(),
                              ));},
                      ),
                      NavItem(
                        icon: "assets/icons/friendship.svg",
                        title: "Logout",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ));},
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);
  final String icon, title;
  final GestureTapCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefualtShadow],
        ),
        child: Column(
          children: [
// Now Svg.Picture here is imported from the flutter_svg library
            SvgPicture.asset(
              icon,
              color: kTextColor,
              height: 28,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
