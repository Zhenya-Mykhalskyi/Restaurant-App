import 'package:flutter/material.dart';

enum Category {
  Recommended,
  Popular,
  Pastas,
}

class Food {
  final String id;
  final List<Category> categories;
  final String imageUrl;
  final String description;
  final String name;
  final String waitTime;
  final num score;
  final String cal;
  final num price;
  final List<Map<String, String>> ingredients;
  final String about;
  final bool hightLight;
  Food({
    required this.id,
    required this.categories,
    required this.imageUrl,
    required this.description,
    required this.name,
    required this.waitTime,
    required this.score,
    required this.cal,
    required this.price,
    required this.ingredients,
    required this.about,
    this.hightLight = false,
  });

  // void plusFood(i) {
  //   i++;
  // }

  // void minusFood(i) {
  //   i > 0 ? i-- : i = 0;
  // }
}

class FoodsProvider with ChangeNotifier {
  static List<Food> _items = [
    Food(
      id: 'm1',
      categories: [Category.Recommended, Category.Popular],
      imageUrl: 'assets/images/dish1.png',
      description: 'No1 In Sales',
      name: 'Soba Soup',
      waitTime: '50 min',
      score: 4.8,
      cal: '325 kcal',
      price: 12,
      ingredients: [
        {'Noodle': 'assets/images/ingre1.png'},
        {'Shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'Scallion': 'assets/images/ingre4.png'}
      ],
      about:
          'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.  ',
      hightLight: true,
    ),
    Food(
      id: 'm2',
      categories: [Category.Recommended],
      imageUrl: 'assets/images/dish2.png',
      description: 'Low Fat',
      name: 'Sai Ua Samun Phrai',
      waitTime: '50 min',
      score: 4.8,
      cal: '325 kcal',
      price: 15,
      ingredients: [
        {'Noodle': 'assets/images/ingre1.png'},
        {'Shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'Scallion': 'assets/images/ingre4.png'}
      ],
      about:
          'An iconic dish of Northern Thailand, "sai ua" is one of the most flavourful sausages I can think of. The pork is mixed with an aromatic curry paste, grilled, then served with sticky rice and fresh veggies. Yum!',
    ),
    Food(
      id: 'm3',
      categories: [Category.Popular, Category.Pastas, Category.Recommended],
      imageUrl: 'assets/images/dish3.png',
      description: 'Hightly Recommended',
      name: 'Ratatouille Pasta',
      waitTime: '50 min',
      score: 4.8,
      cal: '325 kcal',
      price: 12,
      ingredients: [
        {'Noodle': 'assets/images/ingre1.png'},
        {'Shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'Scallion': 'assets/images/ingre4.png'}
      ],
      about:
          'If you\'ve never had it before, ratatouille is a French Provençal dish that is made of stewed vegetables. The ingredients are very simple and you can customize it with your favorite veggies! This particular recipe uses eggplant, zucchini, and tomatoes as the main vegetables, with garlic and onions for flavoring.',
    ),
    Food(
      id: 'm4',
      categories: [Category.Popular],
      imageUrl: 'assets/images/dish4.png',
      description: 'Most Popular',
      name: 'Tomato Chicken',
      waitTime: '50 min',
      score: 4.8,
      cal: '325 kcal',
      price: 14,
      ingredients: [
        {'Noodle': 'assets/images/ingre1.png'},
        {'Shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'Scallion': 'assets/images/ingre4.png'}
      ],
      about:
          'Chicken pieces coated with many fragrant spices like turmeric, cardamom and cloves, then simmered in a tomato sauce. This dish is a family favorite. I have also taken it to potlucks and served it to guests in my home. Everyone asks for the recipe. It is a great slow cooker meal, too.',
      hightLight: true,
    ),
  ];

  List<Food> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  var count = 0;
  int itemCount(i) {
    if (i == 1) {
      count++;
    } else if (i == 2 && count > 0) {
      count--;
    }

    notifyListeners();
    print(count);
    return count;
  }

  static List<Food> get RecommendedFoods {
    return _items
        .where((element) => element.categories.contains(Category.Recommended))
        .toList();
  }

  static List<Food> get PopularFoods {
    return _items
        .where((element) => element.categories.contains(Category.Popular))
        .toList();
  }

  static List<Food> get PastasFoods {
    return _items
        .where((element) => element.categories.contains(Category.Pastas))
        .toList();
  }
}



//   static List<Food> generateRecommendedFoods() {
//     return [
//       Food(
//         DateTime.now().toString(),
//         'assets/images/dish1.png',
//         'No1 In Sales',
//         'Soba Soup',
//         '50 min',
//         4.8,
//         '325 kcal',
//         12,
//         1,
//         [
//           {'Noodle': 'assets/images/ingre1.png'},
//           {'Shrimp': 'assets/images/ingre2.png'},
//           {'Egg': 'assets/images/ingre3.png'},
//           {'Scallion': 'assets/images/ingre4.png'}
//         ],
//         'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.  ',
//         hightLight: true,
//       ),
//       Food(
//         DateTime.now().toString(),
//         'assets/images/dish2.png',
//         'Low Fat',
//         'Sai Ua Samun Phrai',
//         '50 min',
//         4.8,
//         '325 kcal',
//         15,
//         1,
//         [
//           {'Noodle': 'assets/images/ingre1.png'},
//           {'Shrimp': 'assets/images/ingre2.png'},
//           {'Egg': 'assets/images/ingre3.png'},
//           {'Scallion': 'assets/images/ingre4.png'}
//         ],
//         'An iconic dish of Northern Thailand, "sai ua" is one of the most flavourful sausages I can think of. The pork is mixed with an aromatic curry paste, grilled, then served with sticky rice and fresh veggies. Yum!',
//       ),
//       Food(
//         DateTime.now().toString(),
//         'assets/images/dish3.png',
//         'Hightly Recommended',
//         'Ratatouille Pasta',
//         '50 min',
//         4.8,
//         '325 kcal',
//         12,
//         0,
//         [
//           {'Noodle': 'assets/images/ingre1.png'},
//           {'Shrimp': 'assets/images/ingre2.png'},
//           {'Egg': 'assets/images/ingre3.png'},
//           {'Scallion': 'assets/images/ingre4.png'}
//         ],
//         'If you\'ve never had it before, ratatouille is a French Provençal dish that is made of stewed vegetables. The ingredients are very simple and you can customize it with your favorite veggies! This particular recipe uses eggplant, zucchini, and tomatoes as the main vegetables, with garlic and onions for flavoring.',
//       ),
//     ];
//   }

//   static List<Food> generatePopularFoods() {
//     return [
//       Food(
//         DateTime.now().toString(),
//         'assets/images/dish4.png',
//         'Most Popular',
//         'Tomato Chicken',
//         '50 min',
//         4.8,
//         '325 kcal',
//         14,
//         0,
//         [
//           {'Noodle': 'assets/images/ingre1.png'},
//           {'Shrimp': 'assets/images/ingre2.png'},
//           {'Egg': 'assets/images/ingre3.png'},
//           {'Scallion': 'assets/images/ingre4.png'}
//         ],
//         'Chicken pieces coated with many fragrant spices like turmeric, cardamom and cloves, then simmered in a tomato sauce. This dish is a family favorite. I have also taken it to potlucks and served it to guests in my home. Everyone asks for the recipe. It is a great slow cooker meal, too.',
//         hightLight: true,
//       ),
//       Food(
//         DateTime.now().toString(),
//         'assets/images/dish1.png',
//         'No1 In Sales',
//         'Soba Soup',
//         '50 min',
//         4.8,
//         '325 kcal',
//         12,
//         1,
//         [
//           {'Noodle': 'assets/images/ingre1.png'},
//           {'Shrimp': 'assets/images/ingre2.png'},
//           {'Egg': 'assets/images/ingre3.png'},
//           {'Scallion': 'assets/images/ingre4.png'}
//         ],
//         'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
//         hightLight: true,
//       ),
//     ];
//   }
// }
