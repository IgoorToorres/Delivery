import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:flutter/material.dart';

class CardGenericWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final double hightIcon;
  const CardGenericWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.hightIcon = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  icon,
                  height: hightIcon,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.textCardColor,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textCardColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.brackgroundColor,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
