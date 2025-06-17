import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/widgets/primary_container_widget.dart';
import '../widgets/person_information_widget.dart';
import '../widgets/recent_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFDBDEE5),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 18,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leadingWidth: 72,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 26,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PersonInformationWidget(),
              SizedBox(height: context.h(16)),
              RecentWidget(),
              PrimaryContainerWidget(
                isProfile: true,
                title: 'Invite friends to FuelBack',
                subtitle:
                    'You get 50 Fuelz when your friends makes their first purchase.',
                contTitle: 'Find out more',
                image: AppImages.gift2,
              ),
              SizedBox(height: context.h(16)),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
