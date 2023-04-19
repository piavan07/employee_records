import 'package:employee_management/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String text;
  const MessageWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: const Color.fromRGBO(50, 50, 56, 1),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppTextStyles()
                  .mediumBlack
                  .copyWith(color: AppColors().white),
            ),
          ],
        ),
      ),
    );
  }
}
