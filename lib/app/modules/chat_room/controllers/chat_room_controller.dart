import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRoomController extends GetxController {
  final messages = <ChatMessage>[].obs;
  final inputController = TextEditingController();
  final scrollController = ScrollController();
  final isComposing = false.obs;

  @override
  void onInit() {
    super.onInit();
    messages.add(
      const ChatMessage(
        text: "Hi! How can we help you with your pet today?",
        isMe: false,
      ),
    );
    inputController.addListener(_handleInputChange);
  }

  void _handleInputChange() {
    isComposing.value = inputController.text.trim().isNotEmpty;
  }

  void sendMessage() {
    final text = inputController.text.trim();
    if (text.isEmpty) {
      return;
    }
    messages.add(ChatMessage(text: text, isMe: true));
    inputController.clear();
    isComposing.value = false;
    _scrollToBottom();
    _sendAutoReply(text);
  }

  void _sendAutoReply(String userText) {
    Future.delayed(const Duration(milliseconds: 700), () {
      if (isClosed) {
        return;
      }
      messages.add(
        ChatMessage(
          text: _buildReply(userText),
          isMe: false,
        ),
      );
      _scrollToBottom();
    });
  }

  String _buildReply(String userText) {
    final lower = userText.toLowerCase();
    if (lower.contains("vaccine") || lower.contains("vaksin")) {
      return "We can help with vaccine schedules. Which pet and age?";
    }
    if (lower.contains("appointment") || lower.contains("visit")) {
      return "Sure! What date and time works best for you?";
    }
    if (lower.contains("groom") || lower.contains("grooming")) {
      return "Got it. What size is your pet and preferred time slot?";
    }
    return "Thanks for the message! Can you share a few more details?";
  }

  void _scrollToBottom() {
    if (!scrollController.hasClients) {
      return;
    }
    Future.delayed(const Duration(milliseconds: 100), () {
      if (!scrollController.hasClients) {
        return;
      }
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  void onClose() {
    inputController.dispose();
    scrollController.dispose();
    super.onClose();
  }
}

class ChatMessage {
  final String text;
  final bool isMe;

  const ChatMessage({
    required this.text,
    required this.isMe,
  });
}
