// import 'package:Tanyakan/common/bot_instruction.dart';
// import 'package:Tanyakan/common/decoration.dart';
// import 'package:Tanyakan/di.dart';
// import 'package:Tanyakan/features/gemini/presentation/widgets/message_widget.dart';
// import 'package:Tanyakan/helper/env.dart';
// import 'package:Tanyakan/helper/storage.dart';
// import 'package:Tanyakan/utils/app_router.gr.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';

// @RoutePage()
// class ChatPage extends ConsumerStatefulWidget {
//   const ChatPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _ChatPageState();
// }

// class _ChatPageState extends ConsumerState<ChatPage> {
//   late final GenerativeModel _model;
//   late final ChatSession _chat;
//   final ScrollController _scrollController = ScrollController();
//   final TextEditingController _textController = TextEditingController();
//   final FocusNode _textFieldFocus = FocusNode(debugLabel: 'TextField');
//   bool _loading = false;

 
//   @override
//   void initState() {
//     super.initState();
//     _model = ref.read(provideGenerativeModelProvider);
//     _chat = _model.startChat();
//   }

//   void _scrollDown() {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => _scrollController.animateTo(
//         _scrollController.position.maxScrollExtent,
//         duration: const Duration(
//           milliseconds: 750,
//         ),
//         curve: Curves.easeOutCirc,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final history = _chat.history.toList();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tanyakan'),
//         automaticallyImplyLeading: false,
//         actions: [
//           PopupMenuButton<String>(
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 value: 'Option 1',
//                 child: Row(
//                   children: [
//                     Icon(Icons.chat, color: Theme.of(context).iconTheme.color),
//                     const SizedBox(width: 10),
//                     const Text('New Chat'),
//                   ],
//                 ),
//                 onTap: () {
//                 },
//               ),
//               PopupMenuItem<String>(
//                 value: 'Option 2',
//                 child: Row(
//                   children: [
//                     Icon(Icons.settings,
//                         color: Theme.of(context).iconTheme.color),
//                     const SizedBox(width: 10),
//                     const Text('Settings'),
//                   ],
//                 ),
//                 onTap: () => context.router.push(const SettingRoute()),
//               ),
//               PopupMenuItem<String>(
//                 value: 'Option 3',
//                 child: Row(
//                   children: [
//                     Icon(Icons.account_circle,
//                         color: Theme.of(context).iconTheme.color),
//                     const SizedBox(width: 10),
//                     const Text('Account'),
//                   ],
//                 ),
//                 onTap: () => context.router.push(AccountRoute()),
//               ),
//               PopupMenuItem<String>(
//                 value: 'Option 4',
//                 child: Row(
//                   children: [
//                     Icon(Icons.info, color: Theme.of(context).iconTheme.color),
//                     const SizedBox(width: 10),
//                     const Text('About'),
//                   ],
//                 ),
//                 onTap: () => context.router.push(const AboutRoute()),
//               ),
//             ],
//             icon: const Icon(Icons.more_vert),
//           ),
//         ],
//       ),
//       body: RefreshIndicator(
//         onRefresh: () => ref.refresh(provider),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   controller: _scrollController,
//                   itemBuilder: (context, idx) {
//                     final content = history[idx];
//                     final text = content.parts
//                         .whereType<TextPart>()
//                         .map<String>((e) => e.text)
//                         .join();
//                     return MessageWidget(
//                       text: text,
//                       isFromUser: content.role == 'user',
//                     );
//                   },
//                   itemCount: history.length,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 25,
//                   horizontal: 15,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         autofocus: true,
//                         focusNode: _textFieldFocus,
//                         decoration: InputDecorationTextfieldChatPage(
//                             context, 'Enter a prompt...'),
//                         controller: _textController,
//                         onSubmitted: (String value) {
//                           _sendChatMessage(value);
//                         },
//                       ),
//                     ),
//                     const SizedBox.square(dimension: 15),
//                     if (!_loading)
//                       IconButton(
//                         onPressed: () async {
//                           _sendChatMessage(_textController.text);
//                         },
//                         icon: Icon(
//                           Icons.send,
//                           color: Theme.of(context).colorScheme.primary,
//                         ),
//                       )
//                     else
//                       const CircularProgressIndicator(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _sendChatMessage(String message) async {
//     setState(() {
//       _loading = true;
//     });

//     try {
//       final response = await _chat.sendMessage(
//         Content.text(message),
//       );
//       final text = response.text;

//       if (text == null) {
//         _showError('Empty response.');
//         return;
//       } else {
//         setState(() {
//           _loading = false;
//           _scrollDown();
//         });
//       }
//     } catch (e) {
//       _showError(e.toString());
//       setState(() {
//         _loading = false;
//       });
//     } finally {
//       _textController.clear();
//       setState(() {
//         _loading = false;
//       });
//       _textFieldFocus.requestFocus();
//     }
//   }

//   void _showError(String message) {
//     showDialog<void>(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Something went wrong'),
//           content: SingleChildScrollView(
//             child: Text(message),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }