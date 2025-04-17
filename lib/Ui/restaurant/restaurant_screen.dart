import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/_core/widgets/appbar.dart';
import 'package:delivery/Ui/restaurant/widgets/food_widget.dart';
import 'package:delivery/model/dish.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: restaurant.name),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                  tag: restaurant.id,
                  child: Image.asset(
                    'assets/${restaurant.imagePath}',
                    width: 128,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Mais pedidos',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.highlightText,
                  ),
                ),
              ),
              Column(
                children: List.generate(restaurant.dishes.length, (index) {
                  Dish dish = restaurant.dishes[index];
                  return FoodWidget(dish: dish, restaurant: restaurant,);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
