import 'package:air_n_there/constants.dart';
import 'package:air_n_there/screens/flights/components/my_flights_list.dart';
import 'package:flutter/material.dart';

class MyFlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  AppBar(
            backgroundColor: kPrimaryLightColor,
            automaticallyImplyLeading: false,
            title: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Flights"),
              ],
            )),
            // ...
          ),
      body: MyFlightsList(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return ListView();
}
