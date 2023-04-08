import 'package:flutter_starter/domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/data/data.dart';

void main() {
  test('Should get all users', () async {
    final UserRepository userRepository = UserRepository();
    final UserAdapter userAdapter = UserAdapter();

    final response = await userRepository.getUsers();
    final users = userAdapter.users(response.body);

    expect(response.statusCode, 200);
    expect(users.length, 10);
  });

  test('Should get one user', () async {
    final UserAdapter userAdapter = UserAdapter();
    final UserRepository userRepository = UserRepository();

    final response = await userRepository.getUser(id: 1);
    final user = userAdapter.user(response.body);

    expect(response.statusCode, 200);
    expect(user.id, 1);
  });
}
