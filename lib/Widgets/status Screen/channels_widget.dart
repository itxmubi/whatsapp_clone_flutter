import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Utils/app_strings.dart';

class ChannelsWidget extends StatefulWidget {
  const ChannelsWidget({super.key});

  @override
  State<ChannelsWidget> createState() => _ChannelsWidgetState();
}

class _ChannelsWidgetState extends State<ChannelsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(AppStrings().channels),
            const Spacer(),
            Text(AppStrings().explore),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ],
        ),
        for (int i = 0; i < 2; i++)
          ListTile(
            dense: false,
            onTap: () {
              // Get.to(const ChatScreen(), arguments: (names[i]));
            },
            leading: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://picsum.photos/200/300")

                // child: Image.asset("assets/profile_pics/${i + 1}.jpeg"),
                ),
            title: const Text("CNN"),
            subtitle: Text(AppStrings().helloTHisIsMessage),
            trailing: Column(
              children: [Text(AppStrings().yesterday)],
            ),
          )
      ],
    );
  }
}
