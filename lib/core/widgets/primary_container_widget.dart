import 'package:flutter/material.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

class PrimaryContainerWidget extends StatelessWidget {
  final bool isProfile;
  final String title;
  final String subtitle;
  final String contTitle;
  final String image;
  const PrimaryContainerWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.contTitle,
    required this.image,
    this.isProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
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
                title,
                style: TextStyle(
                  fontSize: context.s(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: context.h(8)),
              SizedBox(
                width: 255,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: context.s(14),
                    color: Color(0xff979797),
                  ),
                ),
              ),
              SizedBox(height: context.h(16)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xff79FA95),
                  borderRadius: BorderRadius.circular(context.r(32)),
                ),
                child: Text(
                  contTitle,
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
          right: context.w(-10),
          top: isProfile ? context.h(60) : context.h(20),
          child: Image.asset(image, width: context.w(163)),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: Icon(Icons.cancel_presentation_outlined),
        ),
      ],
    );
  }
}
