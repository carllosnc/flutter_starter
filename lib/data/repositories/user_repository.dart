import 'dart:convert';
import '/domain/domain.dart';
import 'package:http/http.dart' as http;

class UserRepository implements UserRepositoryContract {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  @override
  Future<List<User>> getUsers() async {
    var response = await http.get(Uri.parse('$_baseUrl/users'));
    var usersList = jsonDecode(response.body) as List;
    var users = usersList.map((e) => User.fromJson(e)).toList();

    return users;
  }

  @override
  Future<User> getUser({required num id}) async {
    var response = await http.get(Uri.parse('$_baseUrl/users/$id'));
    var user = User.fromJson(jsonDecode(response.body));

    return user;
  }
}
