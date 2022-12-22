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
        title: const Text(
          'My Social Apps',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://www.youtube.com/anjalshrestha'),
              builder: (context, followLink) => IconButton(
                icon: Image.asset('images/Youtube.png'),
                iconSize: 55,
                onPressed: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://www.facebook.com/anjal.shrestha.10/'),
              builder: (context, followLink) => IconButton(
                icon: const Icon(Icons.facebook),
                iconSize: 69,
                onPressed: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://www.youtube.com/anjalshrestha'),
              builder: (context, followLink) => IconButton(
                icon: Image.asset('images/instagram.png'),
                iconSize: 55,
                onPressed: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://github.com/anjalstha'),
              builder: (context, followLink) => IconButton(
                icon: Image.asset('images/github.png'),
                iconSize: 75,
                onPressed: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://www.figma.com/@_anjal_stha'),
              builder: (context, followLink) => IconButton(
                icon: Image.asset('images/figma.png'),
                iconSize: 65,
                onPressed: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://www.linkedin.com/in/anjal-shrestha-624b0a256/'),
              builder: (context, followLink) => IconButton(
                icon: Image.asset('images/linkedin.png'),
                iconSize: 65,
                onPressed: followLink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
