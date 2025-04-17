import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/_core/bag_provider.dart';
import 'package:delivery/model/dish.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderWidget extends StatelessWidget {
  final Dish dish;
  const OrderWidget({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    BagProvider bagProvider = Provider.of<BagProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                child: Image.asset(
                  'assets/dishes/default.png',
                  width: 120,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dish.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.highlightText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'R\$${dish.price.toStringAsFixed(2)}',
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
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    bagProvider.addAllDishes([dish]);
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle_rounded,
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                ),
                Text(
                  bagProvider.getMapByAmount()[dish].toString(),
                  style: TextStyle(color: AppColors.highlightText),
                ),
                IconButton(
                  onPressed: () {
                    bagProvider.removeDish(dish);
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle_rounded,
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
