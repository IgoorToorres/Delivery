import 'package:delivery/Ui/_core/app_theme.dart';
import 'package:delivery/Ui/_core/bag_provider.dart';
import 'package:delivery/Ui/splash/splash_screen.dart';
import 'package:delivery/data/restaurant_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RestaurantData restaurantData = RestaurantData();
  await restaurantData.getRestaurants();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => restaurantData,
        ),
        ChangeNotifierProvider(
          create: (context) => BagProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}
