import '../providers/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String descriorion;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.descriorion,
    this.score,
    this.menu,
  );

  static Restaurant generateResraurant() {
    return Restaurant(
      'Restaurant',
      '20-30 min',
      '2.4 km',
      'Restaurant',
      'assets/images/res_logo.png',
      'Some Description',
      4.7,
      {
        'Recomended': FoodsProvider.RecommendedFoods,
        'Popular': FoodsProvider.PopularFoods,
        'Pasta': FoodsProvider.PastasFoods,
        'Pizza': FoodsProvider.PizzaFoods,
      },
    );
  }
}
