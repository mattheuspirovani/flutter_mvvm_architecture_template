import '../data/repositories/user/user_repository.dart';
import '../data/repositories/user/user_repository_impl.dart';

UserRepository injectUserRepository() {
  // Aqui você pode plugar versões diferentes do repositório (ex: API real vs fake).
  return UserRepositoryImpl();
}
