import 'package:flutter/material.dart';

const Color blueViolet = Color(0xFF44409E);

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueViolet,
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SectionHeader(title: 'Profile'),
          SettingsTile(
              title: 'Your Profile',
              onTap: () {
                // Navigate to Your Profile page
              }),
          const SectionHeader(title: 'Edit Profile'),
          SettingsTile(
              title: 'Basic Information',
              onTap: () {
                // Navigate to Basic Information page
              }),
          SettingsTile(
              title: 'Contact Information',
              onTap: () {
                // Navigate to Contact Information page
              }),
          SettingsTile(
              title: 'Next of KIN',
              onTap: () {
                // Navigate to Next of KIN page
              }),
          const SectionHeader(title: 'Security'),
          SettingsTile(
              title: 'Reset Password',
              onTap: () {
                // Navigate to Reset Password page
              }),
          SettingsTile(
              title: 'Reset PIN',
              onTap: () {
                // Navigate to Reset PIN page
              }),
          const SectionHeader(title: 'Help Center'),
          SettingsTile(
              title: 'FQA',
              onTap: () {
                // Navigate to FQA page
              }),
          SettingsTile(
              title: 'Privacy Policy',
              onTap: () {
                // Navigate to Privacy Policy page
              }),
          SettingsTile(
              title: 'About Us',
              onTap: () {
                // Navigate to About Us page
              }),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.person_add, color: blueViolet),
            title: const Text('Invite a friend'),
            onTap: () {
              // Implement invite functionality
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: blueViolet),
            title: const Text('LOGOUT'),
            onTap: () {
              // Implement logout functionality
            },
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[200],
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SettingsTile({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
