import 'dart:convert';
import './user.dart';

class UserAdapter {
  users({required String response}) {
    var usersList = jsonDecode(response) as List;
    var users = usersList.map((e) => User.fromJson(e)).toList();

    return users;
  }

  user({required String response}) {
    var user = User.fromJson(jsonDecode(response));

    return user;
  }
}
