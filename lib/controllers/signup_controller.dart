

import 'package:dnegrao/services/auth_service.dart';

class SignUpController {
  final AuthService _authService = AuthService();

  Future<bool> signUpWithEmailAndPassword(String email, String password) async {
    final success = await _authService.signUpWithEmailAndPassword(email, password);
    return success != null;
  }
}
