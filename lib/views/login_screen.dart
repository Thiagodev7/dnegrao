import 'package:dnegrao/controllers/login_controller.dart';
import 'package:dnegrao/views/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _loginController = LoginController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final String email = _emailController.text.trim();
                final String password = _passwordController.text.trim();
                final user = await _loginController.signInWithEmailAndPassword(email, password);
                if (user != null) {
                  print('funcionou');
                  // Navegar para a próxima tela ou realizar outra ação
                } else {
                  // Exibir mensagem de erro ao usuário
                }
              },
              child: Text('Entrar'),
            ),
            ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpScreen()),
    );
  },
  child: Text('Criar Conta'),
),

          ],
        ),
      ),
    );
  }
}
