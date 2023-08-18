import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Constants.dart';
import 'Setting.dart';


class Setting_file extends StatelessWidget {
  final Setting setting;
  const Setting_file({
    super.key,
  required this.setting,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},//Navigation
      child: Row(
      children: [
        Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: klightContentColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child:  Icon(setting.icon, color: kprimaryColor),
        ),
        const SizedBox(width: 5),
        Text(
          setting.title,
          style: const TextStyle(
            color: kprimaryColor,
            fontSize: ksmallFontsize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Icon(CupertinoIcons.chevron_forward, color: Colors.grey.shade600,
        ),
      ],
    ),
    );
  }
}
