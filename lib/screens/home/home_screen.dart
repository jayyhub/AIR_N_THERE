import 'package:flutter/material.dart';
import 'package:air_n_there/components/app_bar.dart';
import 'package:air_n_there/components/custom_bottom_nav_bar.dart';
import 'package:air_n_there/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, isTransparent: true, title: ''),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}
