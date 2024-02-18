import 'package:dnegrao/models/user_model.dart';
import 'package:dnegrao/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController {
  final AuthService _authService = AuthService();

  Future<UserModel?> signInWithEmailAndPassword(String email, String password) async {
    final User? user = await _authService.signInWithEmailAndPassword(email, password);
    if (user != null) {
      return UserModel(uid: user.uid, email: user.email ?? "");
    }
    return null;
  }
}
