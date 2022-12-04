import 'package:aplikacija_za_doktore_387/common/widgets/custom_button.dart';
import 'package:aplikacija_za_doktore_387/common/widgets/custom_textfiled.dart';
import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:aplikacija_za_doktore_387/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/logo.png',
                width: 65,
                height: 55,
              ),
              const Text(
                'Product',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
              ),
              const Text(
                'Arena',
                style: TextStyle(fontSize: 38),
              ),
            ]),
            Container(
              padding: const EdgeInsets.all(40),
              color: GlobalVariables.backgroundColor,
              child: Form(
                key: _signInFormKey,
                child: Column(children: [
                  CustomTextField(
                    controller: _emailController,
                    hintText: 'E-mail',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    controller: _passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    text: 'Log in',
                    onPressed: () {
                      if (_signInFormKey.currentState!.validate()) {
                        signInUser();
                      }
                    },
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
