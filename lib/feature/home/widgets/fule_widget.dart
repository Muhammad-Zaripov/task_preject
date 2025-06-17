import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../../../core/utils/app_images.dart';

class FuleWidget extends StatelessWidget {
  const FuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 25,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Fuel Type',
                style: TextStyle(
                  fontSize: context.s(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset(AppImages.setting),
            ],
          ),
          SizedBox(height: context.h(13)),
          Text(
            'Auto Diesel',
            style: TextStyle(fontSize: context.s(16), color: Color(0xff979797)),
          ),
        ],
      ),
    );
  }
}
