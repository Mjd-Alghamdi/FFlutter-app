import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});
  static String routeName = "details";
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Developer Derails"),
      ),
      body: Center(
        child: Entry.offset(
          visible: true,
          duration: const Duration(milliseconds: 700),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 51, 51),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 7,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Text(
              ModalRoute.of(context)!.settings.arguments.toString(),
              style: const TextStyle(
                color: Color.fromARGB(255, 191, 233, 237),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
