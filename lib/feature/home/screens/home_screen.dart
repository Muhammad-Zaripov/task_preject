import 'package:flutter/material.dart';
import 'package:task_preject/feature/home/widgets/fule_widget.dart';
import 'package:task_preject/feature/profile/screens/profile_screen.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/widgets/primary_container_widget.dart';
import '../widgets/balance_widget.dart';
import '../widgets/car_wash_widget.dart';
import '../widgets/container_widget.dart';
import '../widgets/items_widget.dart';
import '../widgets/piurchase_history_widget.dart';
import '../widgets/price_tracking_widget.dart';
import '../widgets/primary_button_widget.dart';
import '../../../core/extensions/ontext_extensions.dart';
import '../widgets/recommended_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 511,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.homeBacground),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.8),
                          Colors.white,
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80, right: 16, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (cxt) => ProfileScreen(),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
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
                              ),
                              SizedBox(width: context.w(12)),
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
                      SizedBox(height: context.h(100)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      SizedBox(height: context.h(40)),
                      ContainerWidget(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 74),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryContainerWidget(
                    title: 'Get up to 200 L in gift',
                    subtitle: 'Invite friends to FuelBack',
                    contTitle: 'Share invite',
                    image: AppImages.gift,
                  ),
                  SizedBox(height: context.h(16)),
                  RecommendedContainerWidget(),
                  SizedBox(height: context.h(16)),
                  ItemsWidget(),
                  SizedBox(height: context.h(16)),
                  BalanceWidget(),
                  SizedBox(height: context.h(16)),
                  PiurchaseHistoryWidget(),
                  SizedBox(height: context.h(16)),
                  CarWashWidget(),
                  SizedBox(height: context.h(16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [FuleWidget(), PriceTrackingWidget()],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
