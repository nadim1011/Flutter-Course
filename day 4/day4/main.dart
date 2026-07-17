
import 'package:flutter/material.dart';
import 'package:my_testing_app/pages/contact_details.dart';
import 'package:my_testing_app/pages/contact_form.dart';
import 'package:my_testing_app/pages/contact_home_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: ContactHomePage.routeName,
      routes: {
        ContactHomePage.routeName : (context) =>const ContactHomePage(),
        ContactDetails.routeName : (context) => const ContactDetails(),
        ContactForm.routeName : (context) => const ContactForm(),

      },
    )
  );
}


