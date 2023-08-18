import 'dart:html';

import 'package:flutter/material.dart';
import 'package:screen_two/Assignment/Screen_2/body.dart';
import 'package:screen_two/Assignment/Screen_2/constants.dart';
import 'package:screen_two/Assignment/Screen_4/OTP_Screen.dart';


class products_screen extends StatelessWidget {
  const products_screen({super.key});
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Screen")),
      backgroundColor: kPrimaryColor,
      //appBar: buildAppBar(),
      body: Body(),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return OTP_Screen();
              },
            ),
          ).then((value) => null);
        },
      ),

    );


  }


  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          icon: Image.asset("assets/images/notification.jpg"),
           onPressed: () {},
        ),
      ],
    );
  }
}
