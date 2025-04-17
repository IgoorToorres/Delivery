import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/_core/bag_provider.dart';
import 'package:delivery/Ui/_core/widgets/appbar.dart';
import 'package:delivery/model/dish.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodInfoWidget extends StatefulWidget {
  final Dish dish;
  final Restaurant restaurant;
  const FoodInfoWidget({
    super.key,
    required this.dish,
    required this.restaurant,
  });

  @override
  State<FoodInfoWidget> createState() => _FoodInfoWidgetState();
}

class _FoodInfoWidgetState extends State<FoodInfoWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    BagProvider bagProvider = Provider.of<BagProvider>(context);
    return Scaffold(
      appBar: getAppBar(context: context, title: widget.restaurant.name),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Hero(
              tag: 'dish_${widget.dish.id}',
              child: Image.asset(
                'assets/dishes/default.png',
              ),
            ),
            Text(
              widget.dish.name,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.highlightText,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'R\$ ${widget.dish.price},00',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              widget.dish.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    if (quantity != 0) {
                      setState(() {
                        quantity--;
                      });
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle_rounded,
                    color: AppColors.mainColor,
                    size: 40,
                  ),
                ),
                Text(quantity.toString()),
                IconButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  icon: Transform.rotate(
                    angle: 3.14,
                    child: const Icon(
                      Icons.arrow_drop_down_circle_rounded,
                      color: AppColors.mainColor,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (quantity > 0) {
                    bagProvider.addAllDishes(
                      List.generate(quantity, (_) => widget.dish),
                    );
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text('Adicione pelo menos 1 item antes de enviar'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Adicionar',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
