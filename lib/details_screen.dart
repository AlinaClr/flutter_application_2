import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String path;

  const DetailScreen(this.path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(tag: path, child: Image.asset(path)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem ipsum dolor sit amrt",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "内容",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
