import 'package:flutter/material.dart';

String uri='http://192.168.1.6:3000';
class GlobalVariables{

  static const backgroundColor = Colors.white;
  static const buttonColor = Color.fromRGBO(113, 232, 100, 0.9);
  static const List<Map<String, String>> avatarImages = [
    {
      'title': 'John Doe',
      'image': 'assets/images/icon1.jpg',
      'time': '16:00',
      'type': 'Common cold'
    },
    {
      'title': 'Alen K',
      'image': 'assets/images/icon2.jpg',
      'time': '16:30',
      'type': 'Right arm pain'
    },
    {
      'title': 'Amy F',
      'image': 'assets/images/icon3.jpg',
      'time': '16:30',
      'type': 'Covid 19'
    },
    {
      'title': 'Kim H',
      'image': 'assets/images/icon4.jpg',
      'time': '8:00',
      'type': 'Common cold'
    },
    {
      'title': 'Andy A',
      'image': 'assets/images/icon6.jpg',
      'time': '9:30',
      'type': 'Headache'
    },
    {
      'title': 'Bell B',
      'image': 'assets/images/icon3.jpg',
      'time': '9:30',
      'type': 'Headache'
    },
    {
      'title': 'Fiona L',
      'image': 'assets/images/icon6.jpg',
      'time': '10:10',
      'type': 'Covid 19'
    },
    {
      'title': 'Nezir B',
      'image': 'assets/images/icon4.jpg',
      'time': '8:00',
      'type': 'Broken heart'
    },
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Logo',
      'image': 'assets/images/logo.png',
    },
  ];
}