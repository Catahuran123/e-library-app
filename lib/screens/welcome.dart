import 'package:flutter/material.dart';
import 'package:e_library_app/widgets/rounded_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/libraryimageui.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black38, BlendMode.darken),
                ),
              ),
            ),
            SafeArea(
                child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  children: [
                    const Spacer(flex: 6),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text("Books by Eduardo.",
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Spacer(flex: 6),
                    const RoundedButton(
                      buttonName: 'Start Reading',
                    ),
                    const Spacer()
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
