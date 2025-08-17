import 'package:flutter/foundation.dart';
import '../../../domain/models/user/user.dart';
import '../../../data/repositories/user/user_repository.dart';

class UserViewModel extends ChangeNotifier {
  final UserRepository userRepository;

  UserViewModel({required this.userRepository}) {
    _loadUser();
  }

  User? _user;
  bool _isLoading = false;

  User? get user => _user;
  bool get isLoading => _isLoading;

  Future<void> _loadUser() async {
    _isLoading = true;
    notifyListeners();

    _user = await userRepository.getUser();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshUser() => _loadUser();

  Future<void> logOut() async {
    await userRepository.logOut();
    _user = null;
    notifyListeners();
  }
}
