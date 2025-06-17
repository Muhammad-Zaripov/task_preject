import 'package:flutter/material.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/widgets/primary_container_widget.dart';
import '../widgets/primary_button_widget.dart';
import '../../../core/extensions/ontext_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              AppImages.homeBacground,
              width: context.w(482),
              height: 600,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(color: Colors.white, height: 100),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: context.h(71),
                    left: context.w(16),
                    right: context.w(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: context.w(12),
                        children: [
                          CircleAvatar(
                            radius: 22,
                            child: ClipOval(
                              child: Image.asset(
                                AppImages.person,
                                width: 44,
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Hello, Roman',
                            style: TextStyle(
                              fontSize: context.s(16),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      PrimaryButtonWidget(
                        icon: AppImages.notification,
                        padding: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: context.h(40)),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.location),
                        SizedBox(width: context.w(8)),
                        Text(
                          '172 Wandurmmulla',
                          style: TextStyle(
                            fontSize: context.s(16),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: context.h(12)),
                    Text(
                      'FuelBack Personal',
                      style: TextStyle(
                        fontSize: context.s(24),

                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: context.h(4)),
                    Text(
                      '25.00 L',
                      style: TextStyle(
                        fontSize: context.s(24),
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.h(34)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryButtonWidget(
                        icon: AppImages.feul,
                        padding: 16,
                        title: 'Feul Up',
                      ),
                      PrimaryButtonWidget(
                        icon: AppImages.transfer,
                        padding: 16,
                        title: 'Transfer',
                      ),
                      PrimaryButtonWidget(
                        icon: AppImages.pay,
                        padding: 16,
                        title: 'Pay Bill',
                      ),
                      PrimaryButtonWidget(
                        icon: AppImages.accounts,
                        padding: 16,
                        title: 'Accounts',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: context.h(85)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                context.r(16),
                              ),
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
                                    Image.asset(
                                      AppImages.blicq,
                                      width: context.w(62),
                                    ),
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
                          Positioned(
                            top: -10,
                            right: -15,
                            child: Image.asset(AppImages.piecee),
                          ),
                        ],
                      ),
                      SizedBox(height: context.h(16)),
                      PrimaryContainerWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
