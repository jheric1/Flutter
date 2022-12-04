
import 'package:aplikacija_za_doktore_387/models/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  User _user=User(
    id: '', 
    name: '', 
    email: '', 
    password: '', 
    surname: '', 
    type: '', 
    token: '');
  
  User get user=>_user;
  void setUser(String user){
    _user=User.fromJson(user);
    notifyListeners();
  }
}

