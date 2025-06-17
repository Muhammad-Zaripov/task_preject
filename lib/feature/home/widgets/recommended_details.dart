import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../../../core/utils/app_images.dart';

class RecommendedDetails extends StatelessWidget {
  final String image;
  const RecommendedDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(image, width: 245, height: 215, fit: BoxFit.cover),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xB32A414D),
            ),
            child: Text(
              'Open',
              style: TextStyle(fontSize: context.s(12), color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 245,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: const Color(0xB32A414D),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ultimate IOC',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: context.s(16),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(context.r(16)),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Text(
                            '4,7',
                            style: TextStyle(
                              fontSize: context.s(12),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(AppImages.location),
                    Text(
                      '172 Wandurmmulla',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: context.s(14),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
