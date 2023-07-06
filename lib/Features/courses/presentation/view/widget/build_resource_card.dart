import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/widgets/Show_Snackbar.dart';

class BuildResourceCard extends StatelessWidget {
  const BuildResourceCard({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.url,
  });

  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(


      onTap: () async {
      try {
        final Uri link = Uri.parse(url);
print(url);
        if (!await launchUrl(link)) {
          throw Exception('Could not launch $link');
        }
      } on Exception catch (e) {
      print('Exception: $e');
      showSnackBar(context, "No material available OR Could not launch the URL.");
    }

      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 64,
                color: color,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}