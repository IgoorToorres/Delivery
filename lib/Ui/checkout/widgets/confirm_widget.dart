import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/_core/bag_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmWidget extends StatelessWidget {
  const ConfirmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BagProvider bagProvider = Provider.of<BagProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pedido:',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.textCardColor,
                  ),
                ),
                Text(
                  'R\$ ${bagProvider.totalAmount}',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.highlightText,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Entrega:',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.textCardColor,
                  ),
                ),
                Text(
                  'R\$ 6.00',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.highlightText,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.textCardColor,
                  ),
                ),
                Text(
                  'R\$ ${bagProvider.totalAmountWithDelivery}',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.highlightText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.wallet_outlined,
                    color: AppColors.brackgroundColor,
                    size: 30,
                  ),
                  label: Text(
                    'Pedir',
                    style: TextStyle(
                        fontSize: 20, color: AppColors.brackgroundColor),
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
