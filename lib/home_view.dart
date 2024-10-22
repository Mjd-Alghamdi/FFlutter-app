import 'dart:io';

import 'package:first_project/details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeState();
}

class _HomeState extends State<HomeView> {
  String data =
      "Hi I'm a Flutter developer, Flutter is a Framework,  Flutter developed by Google And it use a Dart programming language.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        leadingWidth: 40,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Color.fromARGB(255, 98, 188, 198),
            ),
          ),
        ),
        title: const Text(
          "Welcome Developer",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Happy to see you agin, click to explore the developer profile",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailsView.routeName,
                      // Passing an argument from this page
                      arguments: data,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 98, 188, 198),
                    ),
                    child: const Text(
                      "Developer info",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () => showCustomDialog(),
                  child: const Text(
                    "About the app",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 79, 155, 163),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCustomDialog() {
    if (Platform.isAndroid) {
      showAboutDialog(
        context: context,
      );
    } else if (Platform.isIOS) {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return const CupertinoAlertDialog(
            content: Text(
              "This a Flutter lab!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      );
    }
  }
}
