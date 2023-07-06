import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/widgets/Show_Snackbar.dart';

class AssignmentDataWidget extends StatelessWidget {
  final String title;
  final String? desc;
  final String? file;

  AssignmentDataWidget({required this.title, this.desc, this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.blue.shade200,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style:  Styles.textStyle25.copyWith(fontWeight: FontWeight.w900)
          ),
          const SizedBox(height: 12.0),
          if (desc != null)
            Text(
              desc!,
              style: Styles.textStyle16,
            ),
          if (file != null) ...[
            const SizedBox(height: 12.0),
            Row(
              children: [
                Icon(
                  Icons.attach_file,
                  color: Colors.blue.shade900,
                  size: 18.0,
                ),
                const SizedBox(width: 8.0),
                 GestureDetector(
                   onTap: () async {
                     try {
                       print(file);
                       String url= "https://what-a-sito.000webhostapp.com/lectures_assignments_files/${file}";
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
                  child: Text(
                    file!,

                    style: const TextStyle(

                      fontSize: 16.0,

                      color: Colors.blueAccent,
                    ),
                    overflow: TextOverflow.ellipsis,

                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
