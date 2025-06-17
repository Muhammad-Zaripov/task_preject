import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../utils/app_images.dart';

class PrimaryContainerWidget extends StatelessWidget {
  const PrimaryContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Color(0xffFCF1CD),
                Color(0xffFDE2D8),
                Color(0xffC5EEFD),
                Color(0xff94FBFD),
              ],
            ),
            borderRadius: BorderRadius.circular(context.r(16)),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get up to 200 L in gift',
                style: TextStyle(
                  fontSize: context.s(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: context.h(8)),
              Text(
                'Invite friends to FuelBack',
                style: TextStyle(fontSize: context.s(14)),
              ),
              SizedBox(height: context.h(16)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xff79FA95),
                  borderRadius: BorderRadius.circular(context.r(32)),
                ),
                child: Text(
                  'Share invite',
                  style: TextStyle(
                    fontSize: context.s(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -10,
          top: 10,
          child: Image.asset(AppImages.gift, width: context.w(163)),
        ),
      ],
    );
  }
}
