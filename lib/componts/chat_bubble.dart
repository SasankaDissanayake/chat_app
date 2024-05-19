import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;
  const ChatBubble(
      {super.key, required this.message, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isCurrentUser ? Colors.blue.shade200 : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(message),
    );
  }
}
