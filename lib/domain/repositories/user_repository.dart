import '/domain/domain.dart';

abstract class UserRepositoryContract {
  Future<List<User>> getUsers();
  Future<User> getUser({required int id});
}
