import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void openTelegramGroup() async {
  final String groupLink = "https://t.me/+ubVe23vxWp0yMmM1"; // Replace with your Telegram group link

  if (await canLaunch(groupLink)) {
    await launch(groupLink);
  } else {
    throw "Could not launch $groupLink";
  }
}

class TelegramGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram Group"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()  {
            openTelegramGroup();
            // final String groupLink = "tg://resolve?domain=utubeChannel"; // Replace with your Telegram group link
            // if (await canLaunch(groupLink)) {
            // await launch(groupLink);
            // } else {
            // throw "Could not launch $groupLink";
            // }
            // // openTelegramGroupWithMessage("Hello, this is a pre-filled message!"); // Call the function with your desired message
          },
          child: Text("Open Telegram Group with Message"),
        ),
      ),
    );
  }
}
