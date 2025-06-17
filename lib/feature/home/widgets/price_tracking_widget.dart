import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';
import 'package:task_preject/core/widgets/rounder_widget.dart';

import '../../../core/utils/app_images.dart';

class PriceTrackingWidget extends StatelessWidget {
  const PriceTrackingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RounderWidget(
      padding: EdgeInsets.all(12),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Price Tracking',
            style: TextStyle(
              fontSize: context.s(18),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.h(13)),
          Row(
            children: [
              Text(
                'LKR 287.00',
                style: TextStyle(
                  fontSize: context.s(16),
                  color: Color(0xff979797),
                ),
              ),
              Container(
                width: 34,
                height: 17,
                decoration: BoxDecoration(
                  color: Color(0xff79FA95),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text('^0%', style: TextStyle(fontSize: context.s(12))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
