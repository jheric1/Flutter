import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:aplikacija_za_doktore_387/features/home/widgets/custom_row.dart';
import 'package:aplikacija_za_doktore_387/features/home/widgets/doctor_row.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 37,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Product',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                              Text(
                                'Arena',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 30,
                    ),
                  )
                ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            DoctorRow(),
            SizedBox(height: 40),
            Text('Patient list for today', style: TextStyle(fontSize: 20), textAlign: TextAlign.left,),
            SizedBox(height: 40),
            CustomRow(number: 2),
            SizedBox(height: 20),
            CustomRow(number: 3),
            SizedBox(height: 20),
            CustomRow(number: 4),
            SizedBox(height: 40),
            Text('Tomorrow', style: TextStyle(fontSize: 20)),
            SizedBox(height: 40),
            CustomRow(number: 5),
            SizedBox(height: 20),
            CustomRow(number: 5),
            SizedBox(height: 20),
            CustomRow(number: 3),
            SizedBox(height: 20),
            CustomRow(number: 2),
            SizedBox(height: 20),
            Text('Tomorrow', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            CustomRow(number: 5),
            SizedBox(height: 20),
            CustomRow(number: 5),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
