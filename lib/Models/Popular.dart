import 'package:flutter/material.dart';

class Popular {
  final int id;
  final String title;
  final String date;
  final String image;

  Popular({
    @required this.id,
    @required this.title,
    @required this.date,
    @required this.image,
  });
}

// demo popular data

List<Popular> demoPopular = [
  Popular(id: 1, title: 'FOLKLORE', date: '2020', image: 'assets/images/popular1.png'),
  Popular(id: 2, title: 'ROCKSTAR', date: '2018', image: 'assets/images/popular2.png'),
  Popular(id: 3, title: 'AFTER HOURS', date: '2019', image: 'assets/images/popular3.png'),
];