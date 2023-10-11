// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_login/flutter_login.dart';

// Project imports:
import 'package:yomutube/src/feature/sample/presentation/sample_item_list_view.dart';

const users = {
  // XXX: These are dummies.
  'bob@example.com': 'bob123',
  'alice@example.com': 'alice123',
};

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  Duration get dummyWait => const Duration(milliseconds: 1500);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Login => Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(dummyWait).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup => Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(dummyWait).then((_) => null);
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(dummyWait).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'YomuTube',
      logo: 'assets/images/flutter_logo.png',
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SampleItemListView()));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
