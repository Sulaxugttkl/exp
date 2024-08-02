import 'package:flutter/material.dart';

const Color purpleColor = Color(0xFF44409E);

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: const Text('My Profile', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: purpleColor,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Basic Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const ProfileField(label: 'First Name', value: 'Sulaiman'),
            const ProfileField(label: 'Last Name', value: 'Ochengel'),
            const ProfileField(label: 'UID', value: '123456789'),
            const ProfileField(label: 'Username', value: 'sulaiman_o'),
            const ProfileField(label: 'Gender', value: 'Male'),
            const ProfileField(label: 'Marital Status', value: 'Single'),
            const ProfileField(label: 'Date of Birth', value: '01/01/1990'),
            const ProfileField(label: 'Joined Date', value: '01/01/2020'),
            const SizedBox(height: 16),
            const Text(
              'Contact',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const ProfileField(
                label: 'Mobile Number 1', value: '+256123456789'),
            const ProfileField(
                label: 'Mobile Number 2', value: '+256987654321'),
            const ProfileField(
                label: 'Email Address', value: 'sulaiman@example.com'),
            const ProfileField(
                label: 'Physical Address', value: '123 Main Street, Kampala'),
            const SizedBox(height: 16),
            const Text(
              'Next of Kin',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const ProfileField(label: 'Full Name', value: 'Jane Doe'),
            const ProfileField(label: 'Relationship', value: 'Sister'),
            const ProfileField(label: 'Mobile Number', value: '+256123456789'),
            const ProfileField(
                label: 'Email Address', value: 'jane.doe@example.com'),
            const ProfileField(
                label: 'Postal Address', value: '456 Another Street, Kampala'),
            const ProfileField(
                label: 'Physical Address',
                value: '456 Another Street, Kampala'),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  // Implement edit profile functionality
                },
                child: const Text('Edit', style: TextStyle(color: purpleColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileField({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}
