import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green.shade300,
        title: const Text('My Social Apps'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Link(
          target: LinkTarget.blank,
          uri: Uri.parse('https://www.facebook.com/anjal.shrestha.10/'),
          builder: (context, followLink) => IconButton(
            icon: const Icon(Icons.facebook),
            iconSize: 69,
            onPressed: followLink,
          ),
        ),
        child: Link(
          target: LinkTarget.blank,
          uri: Uri.parse('https://www.facebook.com/anjal.shrestha.10/'),
          builder: (context, followLink) => IconButton(
            icon: const Icon(Icons.facebook),
            iconSize: 69,
            onPressed: followLink,
          ),
        ),
      ),
    );
  }
}
