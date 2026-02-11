import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/modules/chat_room/controllers/chat_room_controller.dart';
import 'package:pet_track/utils/widgets/chat_bubble.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  const ChatRoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cream,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.ink),
          onPressed: () => Get.back(),
        ),
        title: Row(
          children: const [
            CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.sand,
              child: Icon(Icons.pets, color: AppColors.ink),
            ),
            SizedBox(width: 12),
            Text(
              "Pet Track Support",
              style: TextStyle(
                color: AppColors.ink,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            // ================= CHAT LIST =================
            Expanded(
              child: Obx(
                () => ListView.builder(
                  controller: controller.scrollController,
                  padding: const EdgeInsets.all(16),
                  itemCount: controller.messages.length,
                  itemBuilder: (context, index) {
                    final message = controller.messages[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ChatBubble(
                        message: message.text,
                        isMe: message.isMe,
                      ),
                    );
                  },
                ),
              ),
            ),

            // ================= INPUT =================
            SafeArea(
              top: false,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller.inputController,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (_) => controller.sendMessage(),
                        decoration: InputDecoration(
                          hintText: "Type your message...",
                          filled: true,
                          fillColor: AppColors.paper,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Obx(
                      () => CircleAvatar(
                        radius: 24,
                        backgroundColor: controller.isComposing.value
                            ? AppColors.ink
                            : AppColors.sand.withOpacity(0.35),
                        child: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: controller.isComposing.value
                                ? Colors.white
                                : AppColors.ink,
                          ),
                          onPressed: controller.isComposing.value
                              ? controller.sendMessage
                              : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
