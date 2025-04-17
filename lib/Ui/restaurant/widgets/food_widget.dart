import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/restaurant/widgets/food_info_widget.dart';
import 'package:delivery/model/dish.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  final Dish dish;
  final Restaurant restaurant;
  const FoodWidget({super.key, required this.dish, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodInfoWidget(
            dish: dish,
            restaurant: restaurant,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'dish_${dish.id}',
                child: Image.asset(
                  'assets/dishes/default.png',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dish.name,
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.highlightText,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'R\$${dish.price},00',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.textCardColor,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      dish.description,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textCardColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
