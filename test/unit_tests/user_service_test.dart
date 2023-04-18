import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/data/data.dart';

void main() {
  test('Should get all users', () async {
    final UserService userService = UserService();
    final users = await userService.getUsers();

    expect(users.length, 10);
  });

  test('Should get one user', () async {
    final UserService userService = UserService();
    final user = await userService.getUser(id: 1);

    expect(user.id, 1);
  });
}
