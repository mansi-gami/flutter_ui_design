import 'package:flutter/material.dart';
import 'package:screen_two/Assignment/Screen_2/constants.dart';


class search_box extends StatelessWidget {
  const search_box({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Image.asset("assets/icons/search.png",height: 50,width: 50,),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
