import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';
import 'package:task_preject/core/widgets/rounder_widget.dart';
import 'package:task_preject/feature/profile/widgets/badges_widget.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/widgets/primary_container_widget.dart';
import '../widgets/category_widget.dart';
import '../widgets/person_information_widget.dart';
import '../widgets/project_widget.dart';
import '../widgets/recent_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
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
              SizedBox(height: context.h(16)),
              RounderWidget(
                padding: EdgeInsets.zero,
                child: PrimaryContainerWidget(
                  isProfile: true,
                  title: 'Invite friends to FuelBack',
                  subtitle:
                      'You get 50 Fuelz when your friends makes their first purchase.',
                  contTitle: 'Find out more',
                  image: AppImages.gift2,
                ),
              ),
              SizedBox(height: context.h(20)),
              CategoryWidget(),
              SizedBox(height: context.h(28)),
              Text(
                'My projects',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: context.h(12)),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    MyProjectsItem(image: AppImages.projectImage),
                    MyProjectsItem(image: AppImages.projectImage),
                  ],
                ),
              ),
              SizedBox(height: context.h(20)),
              RounderWidget(child: BadgesWidget(count: 6)),
            ],
          ),
        ),
      ),
    );
  }
}
