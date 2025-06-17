import 'package:flutter/material.dart';
import '../../../core/utils/app_images.dart';

class BadgesWidget extends StatelessWidget {
  final int count;
  const BadgesWidget({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My badges',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 50,
          child: Stack(
            children: [
              for (int i = count - 1; i >= 0; i--)
                Positioned(
                  left: (i * 33),
                  child: Image.asset(AppImages.badge, width: 40, height: 40),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
