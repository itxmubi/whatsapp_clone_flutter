import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  String title;

  ChatScreen({required this.title, super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List messages = [
    "HI",
    "Hi",
    "How you?",
    "I am fine. What about you?",
    "I am also good.",
    "Message",
    "This is the next messige This is the next message This is the next message,",
    "Rockstar Games"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        // leading:
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              child: Icon(Icons.person),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              widget.title,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.videocam_outlined),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/whatsapp_background.jpg",
            height: double.maxFinite,
            width: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < messages.length; i++)
                i % 2 == 0
                    ? BubbleSpecialThree(
                        text: messages[i],
                        color: Colors.green,
                        tail: false,
                        sent: true,
                        isSender: true,
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )
                    : const BubbleSpecialOne(
                        text: 'Added iMessage shape bubbles',
                        color: Colors.white,
                        tail: false,
                        sent: true,
                        isSender: false,
                        textStyle: TextStyle(color: Colors.black, fontSize: 16),
                      ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MessageBar(
              onSend: (_) => print(_),
              actions: [
                InkWell(
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.green,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
