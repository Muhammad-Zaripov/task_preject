import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_images.dart';

class PersonInformationWidget extends StatelessWidget {
  const PersonInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            spacing: 12,
            children: [
              CircleAvatar(
                radius: 22,
                child: ClipOval(
                  child: Image.asset(
                    AppImages.person,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roman Doe',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'user.name@gmail.ru',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SvgPicture.asset(AppImages.edit),
                  ],
                ),
              ),
            ],
          ),
          Row(
            spacing: 8,
            children: [
              Text('🎊  You have saved'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'since Apr 26, 2025',
                      style: TextStyle(color: Color(0xff979797)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff2161F5),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Text(
                        'Rs 0.00',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
