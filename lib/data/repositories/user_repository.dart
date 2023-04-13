import '/domain/domain.dart';
import 'package:http/http.dart' as http;

class UserRepository implements UserRepositoryContract {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  @override
  Future<http.Response> getUsers() async {
    var response = await http.get(Uri.parse('$_baseUrl/users'));
    return response;
  }

  @override
  Future<http.Response> getUser({required num id}) async {
    var response = await http.get(Uri.parse('$_baseUrl/users/$id'));
    return response;
  }
}
