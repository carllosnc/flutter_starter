import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/data/data.dart';
import 'package:flutter_starter/domain/domain.dart';

void main() {
  test('Should get all users', () async {
    final UserRepository userRepository = UserRepository();
    final UserAdapter userAdapter = UserAdapter();
    final usersResponse = await userRepository.getUsers();
    final users = userAdapter.users(response: usersResponse.body);

    expect(usersResponse.statusCode, 200);
    expect(users.length, 10);
  });

  test('Should get one user', () async {
    final UserRepository userRepository = UserRepository();
    final UserAdapter userAdapter = UserAdapter();
    final userResponse = await userRepository.getUser(id: 1);
    final user = userAdapter.user(response: userResponse.body);

    expect(userResponse.statusCode, 200);
    expect(user.id, 1);
  });
}
