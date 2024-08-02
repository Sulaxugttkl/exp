import 'package:flutter/material.dart';
import 'otp_verification_page.dart';
import 'sign_in_page.dart';

const Color blueViolet = Color(0xFF44409E);
const Color lightpurple = Color(0xFFF3E5F5);

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _confirmPinController = TextEditingController();

  bool _agreeToTerms = false;

  void _validateFields() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OTPVerificationPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        backgroundColor: blueViolet,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildTextField(
                  labelText: 'First Name',
                  controller: _firstNameController,
                  icon: Icons.person,
                ),
                _buildTextField(
                  labelText: 'Last Name',
                  controller: _lastNameController,
                  icon: Icons.person_outline,
                ),
                _buildTextField(
                  labelText: 'Username/Phone',
                  controller: _phoneController,
                  icon: Icons.phone,
                  prefixText: '+256 ',
                  maxLength: 9,
                ),
                _buildTextField(
                  labelText: 'Username',
                  controller: _usernameController,
                  icon: Icons.account_circle,
                ),
                _buildTextField(
                  labelText: 'Country',
                  controller: _countryController,
                  icon: Icons.flag,
                ),
                _buildTextField(
                  labelText: 'Currency',
                  controller: _currencyController,
                  icon: Icons.monetization_on,
                ),
                _buildTextField(
                  labelText: 'PIN',
                  controller: _pinController,
                  icon: Icons.lock,
                  obscureText: true,
                  maxLength: 4,
                ),
                _buildTextField(
                  labelText: 'Confirm PIN',
                  controller: _confirmPinController,
                  icon: Icons.lock_outline,
                  obscureText: true,
                  maxLength: 4,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: _agreeToTerms,
                      onChanged: (bool? value) {
                        setState(() {
                          _agreeToTerms = value!;
                        });
                      },
                    ),
                    const Text('I agree with the Terms and Conditions'),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _validateFields,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: blueViolet,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text('Register'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                  child: const Text('Already have an account? Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String labelText,
    required TextEditingController controller,
    required IconData icon,
    bool obscureText = false,
    String? prefixText,
    int? maxLength,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        maxLength: maxLength,
        decoration: InputDecoration(
          labelText: labelText,
          prefixText: prefixText,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $labelText';
          }
          return null;
        },
      ),
    );
  }
}
