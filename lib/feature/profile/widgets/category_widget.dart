import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_preject/core/widgets/rounder_widget.dart';
import '../../../core/utils/app_images.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': AppImages.promo, 'title': 'Add Promo Code'},
      {'icon': AppImages.card, 'title': 'Payment Settings'},
      {'icon': AppImages.set, 'title': 'Settings'},
    ];

    return Column(
      children: items.map((item) {
        return RounderWidget(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),

          child: Row(
            children: [
              SvgPicture.asset(item['icon']!, width: 32, height: 32),
              const SizedBox(width: 8),
              Text(
                item['title']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
