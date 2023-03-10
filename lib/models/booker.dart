import 'package:e_library_app/screens/info.dart';
import 'package:flutter/material.dart';
import 'book.dart';

class Booker extends StatefulWidget {
  final Book books;

  const Booker({required this.books, Key? key}) : super(key: key);

  @override
  State<Booker> createState() => _BookerState();
}

class _BookerState extends State<Booker> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Info(
                    books: widget.books,
                  )),
        );
      }),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: AssetImage(
                        widget.books.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.books.like = !widget.books.like;
                      });
                    },
                    icon: Icon(
                        widget.books.like ? Icons.favorite : Icons.favorite),
                    iconSize: 26,
                    color: widget.books.like ? Colors.red : Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.books.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.books.author,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
