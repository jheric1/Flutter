// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:aplikacija_za_doktore_387/constants/error_handling.dart';
import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:aplikacija_za_doktore_387/constants/utils.dart';
import 'package:aplikacija_za_doktore_387/features/home/screens/home_screen.dart';
import 'package:aplikacija_za_doktore_387/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthService{

    void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async{
    try{
        http.Response res= await http.post(
          Uri.parse('$uri/api/signin'), 
          
          body: jsonEncode({
            'email': email,
            'password': password,
          }),
          headers: <String, String>{
            "Content-Type": 'application/json; charset=UTF-8',
          },
        );
        httpErrorHandle(
          response: res, 
          context: context, 
          onSuccess:  () async {
            SharedPreferences preferences=await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);  
            preferences.setString('x-auth-token', jsonDecode(res.body)['token']);
            Navigator.pushNamedAndRemoveUntil(
              context,
              HomeScreen.routeName,
              (route)=>false,
              );
          },
        );
      }catch(e){
      showSnackBar(context, e.toString());
    }
  }
}