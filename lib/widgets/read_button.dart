// ignore_for_file: prefer_const_constructors

import 'package:e_library_app/screens/reader.dart';
import 'package:flutter/material.dart';

class ReadButton extends StatelessWidget {
  const ReadButton({
    Key? key,
    required this.readbuttonName,
  }) : super(key: key);

  final String readbuttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.indigo),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Reader()));
          },
          child: Text(
            readbuttonName,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                height: 1.5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
