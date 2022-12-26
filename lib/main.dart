import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:e_library_app/screens/menupage.dart';
import 'package:e_library_app/screens/welcome.dart';
import 'screens/bookpage.dart';
import 'screens/liked_books.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ItemForMenu currentItem = MenuItems.books;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      angle: 0.0,
      borderRadius: 40,
      showShadow: true,
      backgroundColor: Colors.white54,
      slideWidth: MediaQuery.of(context).size.width * 0.45,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() {
              currentItem = item;
            });
            ZoomDrawer.of(context)!.close();
          },
        ),
      ),
    );
  }

  getScreen() {
    switch (currentItem) {
      case MenuItems.books:
        return const BookPage();
      case MenuItems.liked:
        return const Liked();
    }
  }
}
