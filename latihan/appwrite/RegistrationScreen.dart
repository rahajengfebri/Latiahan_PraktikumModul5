import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan/app/appwrite/AccountController.dart';

void main() {
  runApp(RegistrationScreen());
}

class RegistrationScreen extends StatelessWidget {
  final AccountController accountController = Get.put(
      AccountController()); // Assuming you've set up your bindings correctly

  final TextEditingController userIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: userIdController,
                decoration: InputDecoration(labelText: 'User ID'),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Call your createAccount function from the controller
                  accountController.createAccount({
                    'userId': userIdController.text,
                    'email': emailController.text,
                    'password': passwordController.text,
                    'name': nameController.text,
                  });
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
