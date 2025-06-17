import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../../../core/utils/app_images.dart';

class PiurchaseHistoryWidget extends StatelessWidget {
  const PiurchaseHistoryWidget({super.key});

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
            spacing: 12,
            children: [
              SvgPicture.asset(AppImages.card),
              Text(
                'Purchase History',
                style: TextStyle(
                  fontSize: context.s(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: context.h(12)),
          Text(
            'Athurugiriya Lanka IOC',
            style: TextStyle(fontSize: context.s(16), color: Color(0xff979797)),
          ),
          SizedBox(height: context.h(4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '27 Apr, 03.47',
                style: TextStyle(
                  fontSize: context.s(16),
                  color: Color(0xff979797),
                ),
              ),
              Text(
                'LKR 1,000.00',
                style: TextStyle(
                  fontSize: context.s(16),
                  color: Color(0xff979797),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
