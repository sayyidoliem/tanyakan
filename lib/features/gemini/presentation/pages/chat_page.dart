import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tanyakan/features/gemini/presentation/controller/chat_text_gemini_controller.dart';

@RoutePage()
class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController _textController = TextEditingController();
    final fetchGemini =
        ref.watch(fetchChatTextGeminiControllerProvider(_textController.text));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tanyakan'),
      ),
    );
  }
}
