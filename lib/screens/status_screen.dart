import 'package:flutter/material.dart';

import '../Utils/app_strings.dart';
import '../Widgets/status Screen/channels_widget.dart';
import '../Widgets/status Screen/find_channels.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings().updates,
          // style:
          //     const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Status"),
              StatusWidgets(),
              SizedBox(
                height: 10,
              ),
              ChannelsWidget(),
              FindChannels(),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusWidgets extends StatelessWidget {
  const StatusWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: [
        for (int i = 0; i < 8; i++)
          Stack(children: [
            Container(
              height: 120,
              width: 80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://picsum.photos/200/300")),
            ),
            const Positioned(
              left: 10,
              top: 10,
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            )
          ]),
      ],
    );
  }
}
