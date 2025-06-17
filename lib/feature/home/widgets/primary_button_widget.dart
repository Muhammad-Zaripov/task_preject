import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_preject/core/extensions/ontext_extensions.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String icon;
  final double padding;
  final String? title;
  const PrimaryButtonWidget({
    super.key,
    required this.icon,
    required this.padding,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;
    if (icon.toLowerCase().endsWith('.svg')) {
      iconWidget = SvgPicture.asset(icon);
    } else {
      iconWidget = Image.asset(icon);
    }

    return Column(
      spacing: context.w(4),
      children: [
        Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: const Color(0xB32A414D),
            shape: BoxShape.circle,
          ),
          child: iconWidget,
        ),
        if (title != null)
          Text(
            title!,
            style: TextStyle(
              fontSize: context.s(12),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
      ],
    );
  }
}
