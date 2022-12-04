import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DoctorRow extends StatelessWidget {
  const DoctorRow({super.key});

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
                    GlobalVariables.avatarImages[0]['image']!,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
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
                  const Text(
                    'My Profile',
                    style:  TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    
                  ),
                  Text(
                    'Dr. ${GlobalVariables.avatarImages[0]['title']!}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black),
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
