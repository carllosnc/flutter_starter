import '/data/data.dart';
import '/domain/domain.dart';

class UserService {
  final UserRepository _userRepository = UserRepository();
  final UserAdapter _userAdapter = UserAdapter();

  Future<List<User>> getUsers() async {
    final usersResponse = await _userRepository.getUsers();
    final users = _userAdapter.users(response: usersResponse.body);
    return users;
  }

  Future<User> getUser({required int id}) async {
    final userResponse = await _userRepository.getUser(id: id);
    final user = _userAdapter.user(response: userResponse.body);
    return user;
  }
}
