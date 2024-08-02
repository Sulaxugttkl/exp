import 'package:flutter/material.dart';
import 'home_page.dart'; // Import homePage

const Color blueViolet = Color(0xFF44409E);

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: blueViolet,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Sign In',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                prefixText: '+256 ',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 9,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _pinController,
              decoration: const InputDecoration(
                labelText: 'PIN',
              ),
              obscureText: true,
              maxLength: 4,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      _rememberMe = value ?? false;
                    });
                  },
                ),
                const Text('Remember me'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Handle sign in action and navigate to Home page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: blueViolet, // Corrected color parameter
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('Sign In'),
            ),
            TextButton(
              onPressed: () {
                // Implement Forgot PIN logic
              },
              child: const Text('Forgot PIN?'),
            ),
            TextButton(
              onPressed: () {
                // Implement Sign Up navigation
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
