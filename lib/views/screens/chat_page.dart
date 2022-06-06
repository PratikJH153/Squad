import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:squadapp/logic/models/chat.dart';
import 'package:squadapp/views/widgets/constants.dart';

class ChatPage extends StatelessWidget {
  static const id = "/chat";
  ChatPage({super.key});

  final List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kLightDarkColor,
        floatingActionButton: Container(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 1,
                  ),
                  decoration: const BoxDecoration(
                    color: kLightDarkColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 20,
                      ),
                      hintText: "Add a message...",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding: const EdgeInsets.all(15),
                child: const Icon(
                  Icons.send,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: kLightDarkColor,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(CupertinoIcons.chevron_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
          title: Column(
            children: const [
              Text(
                "Health LifeStyle",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "114 Members",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: kDarkColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          margin: EdgeInsets.only(bottom: 70),
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.red
                ],
                stops: [
                  0.0,
                  0.05,
                  1,
                  1.0,
                ],
              ).createShader(rect);
            },
            blendMode: BlendMode.dstOut,
            child: ListView.builder(
              itemCount: messages.length,
              reverse: true,
              padding: const EdgeInsets.only(
                top: 10,
                left: 5,
                bottom: 120,
                right: 5,
              ),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: messages[index].messageType == "receiver" ? 1 : 10,
                    bottom: messages[index].messageType == "receiver" ? 1 : 10,
                  ),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (messages[index].messageType == "receiver"
                            ? kLightDarkColor
                            : kPrimaryColor),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        messages[index].messageContent,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
