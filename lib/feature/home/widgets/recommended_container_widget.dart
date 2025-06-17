import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';
import 'package:task_preject/core/widgets/rounder_widget.dart';

import '../../../core/utils/app_images.dart';
import 'recommended_details.dart';

class RecommendedContainerWidget extends StatelessWidget {
  const RecommendedContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RounderWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended for You',
                style: TextStyle(
                  fontSize: context.s(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'View on Map',
                style: TextStyle(
                  fontSize: context.s(12),
                  fontWeight: FontWeight.w500,
                  color: Color(0xff979797),
                ),
              ),
            ],
          ),
          SizedBox(height: context.h(12)),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8,
              children: [
                RecommendedDetails(image: AppImages.image),
                RecommendedDetails(image: AppImages.image),
                RecommendedDetails(image: AppImages.image),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
