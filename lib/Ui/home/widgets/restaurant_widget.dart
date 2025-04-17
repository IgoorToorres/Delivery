import 'package:delivery/Ui/restaurant/restaurant_screen.dart';
import 'package:delivery/model/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RestaurantScreen(restaurant: restaurant);
            },
          ),
        );
      },
      child: Row(
        spacing: 12,
        children: [
          Hero(
            tag: restaurant.id,
            child: Image.asset(
              'assets/${restaurant.imagePath}',
              width: 80,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: List.generate(
                  restaurant.stars.toInt(),
                  (index) {
                    return Image.asset('assets/others/star.png');
                  },
                ),
              ),
              Text('${restaurant.distance.toString()}km'),
            ],
          ),
        ],
      ),
    );
  }
}
