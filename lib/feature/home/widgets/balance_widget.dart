import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

import '../../../core/utils/app_images.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'My Fuelz Balance',
            style: TextStyle(
              fontSize: context.s(18),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.h(16)),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Pending', style: TextStyle(fontSize: context.s(16))),
                    Text(
                      '0.00',
                      style: TextStyle(
                        fontSize: context.s(14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'LKR 0.00',
                      style: TextStyle(
                        fontSize: context.s(16),
                        color: Color(0xff979797),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: context.w(20)),
                Container(width: 1, height: context.h(80), color: Colors.black),
                SizedBox(width: context.w(20)),
                Column(
                  children: [
                    Text('Pending', style: TextStyle(fontSize: context.s(16))),
                    Text(
                      '0.00',
                      style: TextStyle(
                        fontSize: context.s(14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'LKR 0.00',
                      style: TextStyle(
                        fontSize: context.s(16),
                        color: Color(0xff979797),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: context.w(20)),
                Container(width: 1, height: context.h(80), color: Colors.black),
                SizedBox(width: context.w(20)),
                Column(
                  children: [
                    Text('Pending', style: TextStyle(fontSize: context.s(16))),
                    Text(
                      '0.00',
                      style: TextStyle(
                        fontSize: context.s(14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'LKR 0.00',
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
          SizedBox(height: context.h(16)),
          Container(
            padding: EdgeInsets.symmetric(vertical: context.h(16)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(context.r(16)),
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Convert Fuelz',
                  style: TextStyle(
                    fontSize: context.s(18),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Image.asset(AppImages.convert),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
