import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/data/data.dart';

void main() {
  test('Should get all users', () async {
    final UserRepository userRepository = UserRepository();
    final users = await userRepository.getUsers();

    expect(users.length, 10);
  });

  test('Should get one user', () async {
    final UserRepository userRepository = UserRepository();
    final user = await userRepository.getUser(id: 1);

    expect(user.id, 1);
  });
}
