import 'package:flutter/material.dart';

import '../../Utils/app_strings.dart';

class FindChannels extends StatefulWidget {
  const FindChannels({super.key});

  @override
  State<FindChannels> createState() => _FindChannelsState();
}

class _FindChannelsState extends State<FindChannels> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Find Channels",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage("assets/logos/rockstar_logo.png"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(AppStrings().rockStarGames),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("     ${AppStrings().follow}    "))
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage("assets/logos/rockstar_logo.png"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(AppStrings().rockStarGames),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("     ${AppStrings().follow}    "))
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 200,
          width: 150,
        )
      ],
    );
  }
}
