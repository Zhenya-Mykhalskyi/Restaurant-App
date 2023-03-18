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
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
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
        'An iconic dish of Northern Thailand, "sai ua" is one of the most flavourful sausages I can think of. The pork is mixed with an aromatic curry paste, grilled, then served with sticky rice and fresh veggies. Yum!',
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
        'If you\'ve never had it before, ratatouille is a French Provençal dish that is made of stewed vegetables. The ingredients are very simple and you can customize it with your favorite veggies! This particular recipe uses eggplant, zucchini, and tomatoes as the main vegetables, with garlic and onions for flavoring.',
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
        'Chicken pieces coated with many fragrant spices like turmeric, cardamom and cloves, then simmered in a tomato sauce. This dish is a family favorite. I have also taken it to potlucks and served it to guests in my home. Everyone asks for the recipe. It is a great slow cooker meal, too.',
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
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
        hightLight: true,
      ),
    ];
  }
}
