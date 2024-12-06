import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:share_plus/share_plus.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.text,
    required this.isFromUser,
  });

  final String text;
  final bool isFromUser;

  Future<void> _copyToClipboard(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: text));

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Text copied to clipboard!'),
        showCloseIcon: true,
      ),
    );
  }

  void _share() {
    Share.share(text, subject: 'Tanyakan chatbot');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isFromUser)
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              child: Icon(Icons.smart_toy),
            ),
          ),
        Flexible(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            decoration: BoxDecoration(
              color: isFromUser
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            margin: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MarkdownBody(
                  data: text,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => _share(),
                      icon: const Icon(Icons.share),
                    ),
                    IconButton(
                      onPressed: () => _copyToClipboard(context),
                      icon: const Icon(Icons.copy),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        if (isFromUser)
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
      ],
    );
  }
}
