import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Utils/app_strings.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class AllChatsScreen extends StatefulWidget {
  const AllChatsScreen({super.key});

  @override
  State<AllChatsScreen> createState() => _AllChatsScreenState();
}

class _AllChatsScreenState extends State<AllChatsScreen> {
  List names = [
    "Ali Bin Kaab",
    "Zubair Bin Abdullah",
    "Asghar Ali Shah",
    "Ibne Sina",
    "Abu Al Quwail",
    "Ibn e Insha"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings().whatsApp,
          style:
              const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintText: AppStrings().searchText,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        )),
                  ),
                ),
              ),
            ),
            for (int i = 0; i < 6; i++)
              ListTile(
                onTap: () {
                  Get.to(
                      ChatScreen(
                        title: names[i],
                      ),
                      arguments: (names[i]));
                },
                leading: const CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://picsum.photos/200/300")

                    // child: Image.asset("assets/profile_pics/${i + 1}.jpeg"),
                    ),
                title: Text(names[i]),
                subtitle: const Text("Hello this is message"),
                trailing: const Column(
                  children: [Text("Yesterday")],
                ),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
