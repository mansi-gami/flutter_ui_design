import 'package:flutter/material.dart';


import 'Constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/Avtar.jpeg',
          width: 80,
          height: 80,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
                "Mansi Patel",
                style: TextStyle(
                  fontSize: kbigFontSize,
                  fontWeight: FontWeight.bold,
                  color: kprimaryColor,
                )
            ),
            Text("Youtube Channel",
              style: TextStyle(
                fontSize: ksmallFontsize,
                color: Colors.grey.shade600,
              ),
            )
          ],
        )
      ],
    );
  }
}
