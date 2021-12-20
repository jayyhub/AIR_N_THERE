import 'package:air_n_there/screens/home/components/home_header.dart';
import 'package:air_n_there/screens/home/components/popular_places.dart';
import 'package:air_n_there/screens/home/components/top_travelers.dart';
import 'package:flutter/material.dart';
import 'package:air_n_there/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            HomeHeader(),
            VerticalSpacing(),
            PopularPlaces(),
            VerticalSpacing(),
            TopTravelers(),
            VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
