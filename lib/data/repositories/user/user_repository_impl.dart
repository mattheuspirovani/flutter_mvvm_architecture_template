import '../../../domain/models/user/user.dart';
import 'user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  User? _user = User(id: '1', name: 'Template User');

  @override
  Future<User?> getUser() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _user;
  }

  @override
  Future<void> logOut() async {
    await Future.delayed(const Duration(milliseconds: 300));
    _user = null;
  }
}
