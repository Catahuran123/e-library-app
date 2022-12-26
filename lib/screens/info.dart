import 'package:e_library_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:e_library_app/widgets/read_button.dart';

class Info extends StatefulWidget {
  final Book books;

  const Info({Key? key, required this.books}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 500,
                        color: Colors.indigo,
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 75,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 300,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 5,
                                            offset: const Offset(4, 4))
                                      ]),
                                      child: Image(
                                        height: Image(
                                                image: AssetImage(
                                                    widget.books.image))
                                            .height,
                                        image: AssetImage(widget.books.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      widget.books.name,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      widget.books.author,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.books.detail,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.indigo,
                        ),
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              widget.books.like = !widget.books.like;
                            });
                          }),
                          child: Icon(
                            widget.books.like ? Icons.favorite : Icons.favorite,
                            size: 28,
                            color:
                                widget.books.like ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      const ReadButton(
                        readbuttonName: 'Read Novel',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
