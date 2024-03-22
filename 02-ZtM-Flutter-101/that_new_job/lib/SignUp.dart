import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _signInKey = GlobalKey();
  final RegExp emailValid =
      RegExp(r"^[a-zA-Z0-9_\-\+\.]+@[a-zA-Z0-9\-]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _signInKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage('assets/tnj-logo-removebg.png'), width: 200,),
            SizedBox(height: 20,),
            const Text(
              'Sign up to TNJ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 40, 15, 0),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: 'Email Address',
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    } else if (!emailValid.hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 192, 230),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    if (_signInKey.currentState!.validate()) {
                      debugPrint('Email: ${_emailController.text}');
                      debugPrint('Password: ${_passwordController.text}');
                    }
                  },
                  child: const Text('Sign Up',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop();
                },
                child: const Text('Already have an account, Login here'))
          ],
        ),
      ),
    );
  }
}
