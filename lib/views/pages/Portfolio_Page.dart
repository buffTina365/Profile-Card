import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Lead Product Designer – X:\n'
                'Oversaw the end-to-end mobile design strategy for a next-gen music discovery platform, leading a cross-functional team of designers and developers.\n'
                '\n'
                'Senior Product Designer – Spotify\n'
                'Led design initiatives for key features in the Spotify mobile app, including personalized playlists and social sharing tools.\n'
                '\n'
                'Senior Product Designer – YouTube Music\n'
                'Redesigned core mobile interfaces to improve user engagement and streamlined music discovery across platforms.\n'
                '\n'
                'Senior Mobile Developer – Anghami\n'
                'Built and optimized performance-critical features for the Anghami Android and iOS apps, with a focus on audio playback and personalization.\n'
                '\n'
                'Mobile App Developer – Anghami\n'
                'Developed new user-facing features, contributed to codebase modernization, and collaborated with designers to refine the UI/UX experience.\n'
                '\n'
                'App Development Intern – Anghami\n'
                'Assisted in building internal tools and debugging live mobile features during a rapid development phase.\n'
                '\n'
                'App Development Intern – iTunes\n'
                'Contributed to QA and feature testing on the iTunes mobile interface; helped streamline user workflows in the iOS ecosystem.\n',

                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
