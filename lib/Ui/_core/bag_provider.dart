import 'package:delivery/model/dish.dart';
import 'package:flutter/material.dart';

class BagProvider extends ChangeNotifier {
  List<Dish> dishesOnBag = [];

  void addAllDishes(List<Dish> dishes){
    dishesOnBag.addAll(dishes);
    notifyListeners();
  }

  void removeDish(Dish dish){
    dishesOnBag.remove(dish);
    notifyListeners();
  }

  void addDish(Dish dish){
    dishesOnBag.add(dish);
    notifyListeners();
  }
  
  void clearBag(){
    dishesOnBag.clear();
    notifyListeners();
  }

  Map<Dish, int> getMapByAmount(){
    Map<Dish, int> mapResult = {};
    for(Dish dish in dishesOnBag){
      if(mapResult[dish] == null){
        mapResult[dish] = 1;
      }else{
        mapResult[dish] = mapResult[dish]! + 1;
      }
    }
    return mapResult;
  }
}