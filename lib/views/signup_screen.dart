import 'package:dnegrao/controllers/signup_controller.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController _signUpController = SignUpController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Conta'),
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
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final String email = _emailController.text.trim();
                final String password = _passwordController.text.trim();
                final success = await _signUpController.signUpWithEmailAndPassword(email, password);
                if (success) {
                  // Navegar para a próxima tela ou realizar outra ação
                } else {
                  // Exibir mensagem de erro ao usuário
                }
              },
              child: Text('Criar Conta'),
            ),
          ],
        ),
      ),
    );
  }
}
