import '../../../domain/models/user/user.dart';

abstract class UserRepository {
  Future<User?> getUser();
  Future<void> logOut();
}
