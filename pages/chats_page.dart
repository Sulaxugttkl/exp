import 'package:flutter/material.dart';

const Color blueViolet = Color(0xFF44409E);

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        backgroundColor: blueViolet,
      ),
      body: Column(
        children: [
          // Chat List
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of chat items
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: blueViolet,
                    child: Text(
                      'U', // Placeholder for user initial or profile picture
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text('User $index'),
                  subtitle: const Text('Last message...'),
                  trailing: const Text('10:00 AM'),
                  onTap: () {
                    // Navigate to chat detail
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
