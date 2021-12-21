import 'package:flutter/material.dart';
import 'package:air_n_there/screens/Login/login_screen.dart';
import 'package:air_n_there/screens/Signup/signup_screen.dart';
import 'package:air_n_there/screens/flights/components/background.dart';
import 'package:air_n_there/screens/flights/components/flights_list.dart';
import 'package:air_n_there/components/rounded_button.dart';
import 'package:air_n_there/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
      final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
        'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
        'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
        'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
        
    return ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(europeanCountries[index]),
          );
        },
      );
  }
}
