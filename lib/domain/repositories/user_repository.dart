import 'package:http/http.dart' as http;

abstract class UserRepositoryContract {
  Future<http.Response> getUsers();
  Future<http.Response> getUser({required int id});
}
