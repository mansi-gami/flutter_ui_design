import 'package:flutter/material.dart';
import 'package:screen_two/Assignment/Screen_2/products_screen.dart';

import 'Avatar.dart';
import 'Constants.dart';
import 'Setting.dart';
import 'Setting_file.dart';


class Setting_screen extends StatefulWidget {
  const Setting_screen({super.key});

  @override
  State<Setting_screen> createState() => _Setting_screenState();
}

class _Setting_screenState extends State<Setting_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Setting Screen")),
      body: SingleChildScrollView(
        child : Padding(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
        child: SingleChildScrollView(
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Avatar(),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            Column(
              children: List.generate(
                settings.length,
                    (index) => Setting_file(setting : settings[index]
                    ),
              ),
            ),

            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            Column(
              children: List.generate(
                settings2.length,
                    (index) => Setting_file(setting : settings2[index]
                ),
              ),

            ),
              const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: ksecondryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.support_agent,
                    size: 50,
                    color: ksecondryColor,
                  ),
                  SizedBox(width: 10),
                  Text("Feel Free to Ask, We Ready to Help", style: TextStyle(
                      fontSize: ksmallFontsize,
                      color: ksecondryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        ),


    ),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return products_screen();
              },
            ),
          ).then((value) => null);
        },
      ),
    );
  }
}
