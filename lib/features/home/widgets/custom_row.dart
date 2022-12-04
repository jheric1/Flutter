import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final int number;
  const CustomRow({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    GlobalVariables.avatarImages[number - 1]['image']!,
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              // Image.asset(
              //             'assets/images/icon1.png',
              //             width: 5,
              //             height: 4,
              //           ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    GlobalVariables.avatarImages[number - 1]['title']!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        GlobalVariables.avatarImages[number - 1]['time']!,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        GlobalVariables.avatarImages[number - 1]['type']!,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
