import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:aplikacija_za_doktore_387/features/home/services/home_services.dart';
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
                  child: IconButton(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () => showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Container(
                          height: 230,
                          child: Column(
                            
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Log Out",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Are you sure you want to logout",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      "from the console?",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400
                                      ),
                                      maxLines: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          primary: Colors.black),
                                      child: const Text("Cancel"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          primary: Colors.black),
                                      onPressed: () {
                                        HomeServices().logOut(context);
                                      },
                                      child: const Text("Yes"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            DoctorRow(),
            SizedBox(height: 40),
            Text(
              'Patient list for today',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
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
