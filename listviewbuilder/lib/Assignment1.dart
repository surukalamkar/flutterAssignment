import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<String> imgList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkqccP8yfphF0-U1DHqohENjVVeJrEuGXoIFYsGE1e5A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh7lG6bKaUmTRdIQl6MA1El7X-IJvRjHKm9x0aYjIziQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2mhEPoaf9Op-oN9aZCV4VilewWAZm1KzIbDdagq7FYQ&s"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST VIEW"),
      ),
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(4),
              child: Image.network(
                imgList[index],
              ),
            );
          }),
    );
  }
}
