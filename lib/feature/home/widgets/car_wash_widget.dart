import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';
import '../../../core/utils/app_images.dart';

class CarWashWidget extends StatelessWidget {
  const CarWashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          clipBehavior: Clip.none,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Color(0xffFCF1CD),
                Color(0xffC5EEFD),
                Color(0xff94FBFD),
              ],
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 12,
                children: [
                  Image.asset(AppImages.car),
                  Text(
                    'Car Wash',
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
                style: TextStyle(
                  fontSize: context.s(16),
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(height: context.h(4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1.3 km',
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
        ),
        Positioned(right: 0, bottom: -15, child: Image.asset(AppImages.bigCar)),
      ],
    );
  }
}
