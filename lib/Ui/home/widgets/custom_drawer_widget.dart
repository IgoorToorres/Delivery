import 'package:delivery/Ui/_core/app_colors.dart';
import 'package:delivery/Ui/checkout/checkout_screnn.dart';
import 'package:delivery/user/user_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Image.asset('assets/logo.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Boas-Vindas!',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColors.highlightText,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                spacing: 20,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutScrenn(),
                          ),
                        );
                      },
                      label: Text(
                        'Sacola',
                        style: TextStyle(fontSize: 18),
                      ),
                      icon: Icon(
                        Icons.shopping_cart,
                        color: AppColors.brackgroundColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UserScreen(),
                          ),
                        );
                      },
                      label: Text(
                        'Minha conta',
                        style: TextStyle(fontSize: 18),
                      ),
                      icon: Icon(
                        Icons.person,
                        color: AppColors.brackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
