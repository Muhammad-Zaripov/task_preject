import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../../../core/utils/app_images.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.r(16)),
            color: Colors.white,
          ),
          width: double.infinity,
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.blicq, width: context.w(62)),
                  Text(
                    'You pay. Blicq gives back.',
                    style: TextStyle(
                      fontSize: context.s(18),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Even for the boring stuff.',
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
        Positioned(top: -10, right: -15, child: Image.asset(AppImages.piecee)),
      ],
    );
  }
}
