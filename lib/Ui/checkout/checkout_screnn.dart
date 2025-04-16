import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/_core/bag_provider.dart';
import 'package:delivery/Ui/checkout/widgets/order_widget.dart';
import 'package:delivery/model/dish.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutScrenn extends StatelessWidget {
  const CheckoutScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    BagProvider bagProvider = Provider.of<BagProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sacola'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              bagProvider.clearBag();
            },
            child: Text(
              'Limpar',
              style: TextStyle(color: AppColors.mainColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Pedido',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.highlightText,
                ),
              ),
              Column(
                spacing: 12,
                children: List.generate(
                  bagProvider.getMapByAmount().keys.length,
                  (index) {
                    Dish dish =
                        bagProvider.getMapByAmount().keys.toList()[index];
                    return OrderWidget(dish: dish);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
