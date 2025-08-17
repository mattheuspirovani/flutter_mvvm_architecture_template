import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/user_view_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<UserViewModel>();

    if (vm.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (vm.user == null) {
      return const Center(child: Text('User not logged in'));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello, ${vm.user!.name}!'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: vm.refreshUser,
          child: const Text('Refresh'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: vm.logOut,
          child: const Text('Log Out'),
        ),
      ],
    );
  }
}
