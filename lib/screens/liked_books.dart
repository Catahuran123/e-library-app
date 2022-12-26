import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:e_library_app/models/booker.dart';
import 'package:e_library_app/models/bookshelf.dart';
import 'package:e_library_app/widgets/zoom_menu.dart';

class Liked extends StatelessWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 41, 127, 163),
        leading: const ZoomMenu(),
        title: const Text("Liked"),
      ),
      body: Column(
        children: [
          Expanded(
            child: MasonryGridView.count(
              itemCount: bookshelf.where((book) => book.like == true).length,
              itemBuilder: (context, index) {
                List likedbooks =
                    bookshelf.where((book) => book.like == true).toList();
                return Booker(books: likedbooks[index]);
              },
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
