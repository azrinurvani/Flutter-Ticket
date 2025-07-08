import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData iconData;
  final String text;

  const AppTextIcon({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: AppStyles.planeColor,
          ),
          const SizedBox(width: 10),
          Text(text, style: AppStyles.textStyle)
        ],
      ),
    );
  }
}
