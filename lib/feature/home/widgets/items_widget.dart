import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../../../core/utils/app_images.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: context.w(12),
            right: context.w(12),
            top: context.h(12),
            bottom: context.h(25),
          ),
          decoration: BoxDecoration(
            color: Color(0xff25A9FE),
            borderRadius: BorderRadius.circular(context.r(16)),
          ),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Send Fuelz',
                    style: TextStyle(
                      fontSize: context.s(18),
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(AppImages.transfer, width: context.w(24)),
                ],
              ),

              Text(
                'LKR 287.00 to share',
                style: TextStyle(fontSize: context.s(16), color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xff79FA95),
            borderRadius: BorderRadius.circular(context.r(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 18),
                child: Text(
                  'Social\nPortal',
                  style: TextStyle(
                    fontSize: context.s(18),
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Image.asset(AppImages.leaf),
            ],
          ),
        ),
      ],
    );
  }
}
