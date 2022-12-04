import 'dart:convert';

class User {
  final String id;
  final String name;
  final String surname;
  final String email;
  final String password;
  final String type;
  final String token;

  User({
    required this.id,
    required this.name, 
    required this.email, 
    required this.password, 
    required this.surname, 
    required this.type, 
    required this.token
    });
    Map<String, dynamic> toMap(){
      return{
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'surname': surname,
        'type': type,
        'token': token,
      };
    }
    factory User.fromMap(Map<String, dynamic> map){
      return User(
        id: map['_id'] ??  '',
        name: map['name'] ??  '',
        email: map['email'] ??  '',
        password: map['password'] ??  '',
        surname: map['surname'] ??  '',
        type: map['type'] ??  '',
        token: map['token'] ??  ''
        );
    }
    String toJson() => json.encode(toMap());
    factory User.fromJson(String source) => User.fromMap(jsonDecode(source));
}
