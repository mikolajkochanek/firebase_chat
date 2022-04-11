import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import '../widgets/custom_icon_button.dart';
import 'dart:math';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  static const routeName = "chat";

  @override
  State<Chat> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("petka bonk"),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: CustomIconButton(
            iconData: Icons.arrow_back_ios_new,
            pressHandler: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
        Container(
          alignment: Alignment.bottomCenter,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.all(
                min(90, MediaQuery.of(context).size.height * 0.15) * 0.4),
            child: TextField(),
          ),
        ),
        Positioned.fill(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  bottom: Radius.elliptical(80, 60)),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                  ))
                ],
              ),
            ),
            bottom: min(80, MediaQuery.of(context).size.height * 0.15))
      ]),
    );
  }
}