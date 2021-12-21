import 'package:flutter/material.dart';
import 'package:air_n_there/screens/Login/login_screen.dart';
import 'package:air_n_there/screens/Signup/signup_screen.dart';
import 'package:air_n_there/screens/flights/components/background.dart';
import 'package:air_n_there/screens/flights/components/flights_list.dart';
import 'package:air_n_there/components/rounded_button.dart';
import 'package:air_n_there/constants.dart';
import 'package:flutter_svg/svg.dart';

class AllFlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    final europeanCountries = [
      'Albania',
      'Andorra',
      'Armenia',
      'Austria',
      'Azerbaijan',
      'Belarus',
      'Belgium',
      'Bosnia and Herzegovina',
      'Bulgaria',
      'Croatia',
      'Cyprus',
      'Czech Republic',
      'Denmark',
      'Estonia',
      'Finland',
      'France',
      'Georgia',
      'Germany',
      'Greece',
      'Hungary',
      'Iceland',
      'Ireland',
      'Italy',
      'Kazakhstan',
      'Kosovo',
      'Latvia',
      'Liechtenstein',
      'Lithuania',
      'Luxembourg',
      'Macedonia',
      'Malta',
      'Moldova',
      'Monaco',
      'Montenegro',
      'Netherlands',
      'Norway',
      'Poland',
      'Portugal',
      'Romania',
      'Russia',
      'San Marino',
      'Serbia',
      'Slovakia',
      'Slovenia',
      'Spain',
      'Sweden',
      'Switzerland',
      'Turkey',
      'Ukraine',
      'United Kingdom',
      'Vatican City'
    ];

    return Container(
      decoration: BoxDecoration(border: Border.all(color: kPrimaryColor)),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: kPrimaryColor)),
              // padding: EdgeInsets.only(top: 10),
              child: ListTile(
                title: Text(europeanCountries[index]),
                trailing: Icon(Icons.book),
              ),
            ),
          );
        },
      ),
    ); // return Background(
    //   child: SingleChildScrollView(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text(
    //           "Flights",
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         SizedBox(height: size.height * 0.05),
    //         SizedBox(height: size.height * 0.05),
    //         // flights_list
    //         // Container(
    //         //   child: ListView(
    //         //     children: <Widget>[Text("data")],
    //         //   ),

    //           //     ListView(
    //           //   shrinkWrap: true,
    //           //   padding: const EdgeInsets.all(20.0),
    //           //   children: const <Widget>[
    //           //     Text("I'm dedicating every day to you"),
    //           //     Text('Domestic life was never quite my style'),
    //           //     Text('When you smile, you knock me out, I fall apart'),
    //           //     Text('And I thought I was so smart'),
    //           //   ],
    //           // )
    //         // ),

    //       ],
    //     ),
    //   ),
    // );
  }
}
