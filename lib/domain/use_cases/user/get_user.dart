import '../../models/user/user.dart';
import '../../../data/repositories/user/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<User?> call() {
    return repository.getUser();
  }
}
