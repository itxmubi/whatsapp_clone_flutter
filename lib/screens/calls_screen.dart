import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Controller/call_Controller.dart';

import '../Utils/app_strings.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  CallController callController = CallController();

  @override
  void initState() {
    callController.loadCalldata();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings().call,
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Favourite"),
            ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage("https://picsum.photos/200/300")

                  // child: Image.asset("assets/profile_pics/${i + 1}.jpeg"),
                  ),
              title: const Text("ABCD"),
              subtitle: const Text("Yesterday"),
              trailing: const Icon(Icons.call_outlined),
            ),
            const Text("Favourite"),
            for (int i = 0; i < 5; i++)
              ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://picsum.photos/200/300")

                    // child: Image.asset("assets/profile_pics/${i + 1}.jpeg"),
                    ),
                title: const Text("ABCD"),
                subtitle: const Text("Yesterday, 8:30 PM"),
                trailing: const Icon(Icons.call_outlined),
              ),
          ],
        ),
      ),
    );
  }
}
