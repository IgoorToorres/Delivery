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
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Image.asset("assets/dishes/default.png", fit: BoxFit.cover,),
        title: Text(
          dish.name,
          style: TextStyle(
            fontSize: 20,
            color: AppColors.highlightText,
          ),
        ),
        subtitle: Text("R\$${dish.price.toStringAsFixed(2)}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                bagProvider.removeDish(dish);
              },
              icon: Icon(Icons.remove),
            ),
            Text(
              bagProvider.getMapByAmount()[dish].toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                bagProvider.addAllDishes([dish]);
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
