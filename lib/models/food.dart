class Food {
  String imageUrl;
  String description;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(
    this.imageUrl,
    this.description,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about, {
    this.hightLight = false,
  });

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
        'assets/images/dish1.png',
        'No1 In Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'}
        ],
        'Simply put, ramne is s Japanese noodle soup',
        hightLight: true,
      ),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Sai Ua Samun Phrai',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'}
        ],
        'Simply put, ramne is s Japanese noodle soup',
      ),
      Food(
        'assets/images/dish3.png',
        'Hightly Recommended',
        'Ratatouille Pasta',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'}
        ],
        'Simply put, ramne is s Japanese noodle soup',
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/dish4.png',
        'Most Popular',
        'Tomato Chicken',
        '50 min',
        4.8,
        '325 kcal',
        14.5,
        0,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'}
        ],
        'Simply put, ramne is s Japanese noodle soup',
        hightLight: true,
      ),
      Food(
        'assets/images/dish1.png',
        'No1 In Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'}
        ],
        'Simply put, ramne is s Japanese noodle soup',
        hightLight: true,
      ),
    ];
  }
}
