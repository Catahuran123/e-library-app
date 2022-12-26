import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:e_library_app/models/booker.dart';
import 'package:e_library_app/models/bookshelf.dart';
import 'package:e_library_app/widgets/zoom_menu.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ZoomMenu(),
        backgroundColor: const Color.fromARGB(255, 39, 234, 248),
        title: const Text("Books"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: MasonryGridView.count(
              itemCount: bookshelf.length,
              itemBuilder: (context, index) {
                return Booker(books: bookshelf[index]);
              },
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
