import 'package:flutter/material.dart';
import 'package:screen_two/Assignment/Screen_2/constants.dart';
import 'package:screen_two/Assignment/Screen_2/products_screen.dart';
import 'package:screen_two/Assignment/Screen_3/HomePage.dart';
import 'package:screen_two/Assignment/Screen_4/OTP_Screen.dart';


import 'Assignment/Screen_1/Setting_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: kPrimaryColor,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
           home: Setting_screen(),
        // home: products_screen(),
        // home: OTP_Screen(),
        // home: HomePage(),
    );
  }
}

