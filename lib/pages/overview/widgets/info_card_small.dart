import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {

  final String title;
  final String value;
  final bool isActive;
  final Function()? onTap;

  const InfoCardSmall({
    super.key, 
    required this.title, 
    required this.value, 
    required this.isActive, 
    this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive?active:lightGrey,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                weight: FontWeight.w300,
                color: isActive?active:lightGrey,
              ),

              CustomText(
                text: value,
                size: 24,
                weight: FontWeight.w300,
                color: isActive?active:lightGrey,
              ),

            ],
          ),
        ),

      ),
    );
  }
}