import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
              onChanged: onChanged,
            ),
            ElevatedButton(
              onPressed: () {
                login();
              },
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.clear();
  }

  void onChanged(String text) {
    print(text);
  }
}
