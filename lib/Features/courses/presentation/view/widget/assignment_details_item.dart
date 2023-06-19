import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class AssignmentDetailsItem extends StatelessWidget {
  const AssignmentDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.book, size: 32),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Course Title',
                  style:  Styles.textStyle17.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Row(
                  children:   [
                    const Icon(Icons.description, size: 16, color: Colors.grey),
                    const SizedBox(width: 8),
                    Text(
                      'Course Description',
                      style:  Styles.textStyle16
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}