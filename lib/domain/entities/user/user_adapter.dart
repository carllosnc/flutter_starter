import 'dart:convert';
import './user.dart';

class UserAdapter {
  List<User> users(String body) {
    var usersList = jsonDecode(body) as List;
    var users = usersList.map((e) => User.fromJson(e)).toList();
    return users;
  }

  User user(String body) {
    var user = User.fromJson(jsonDecode(body));
    return user;
  }
}
