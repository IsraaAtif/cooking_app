import 'package:cooking_app/widgets/cookware_ingredients_card.dart';
import 'package:cooking_app/widgets/instructions.dart';

class DetailsModule {
  const DetailsModule();
  static const List<CookwareIngredientsCard> cookware = [
    const CookwareIngredientsCard(txt: "Frying Pan", quant: ""),
    const CookwareIngredientsCard(txt: "Saucepan", quant: ""),
    const CookwareIngredientsCard(txt: "Stock Pot", quant: ""),
    const CookwareIngredientsCard(txt: "Dutch Oven", quant: ""),
    const CookwareIngredientsCard(txt: "Wok", quant: ""),
    const CookwareIngredientsCard(txt: "Grill Pan", quant: ""),
    const CookwareIngredientsCard(txt: "Baking Tray", quant: ""),
    const CookwareIngredientsCard(txt: "Baking Dish", quant: ""),
    const CookwareIngredientsCard(txt: "Roasting Pan", quant: ""),
    const CookwareIngredientsCard(txt: "Steamer", quant: ""),
    const CookwareIngredientsCard(txt: "Griddle", quant: ""),
    const CookwareIngredientsCard(txt: "Cast Iron Skillet", quant: ""),
    const CookwareIngredientsCard(txt: "Casserole Dish", quant: ""),
    const CookwareIngredientsCard(txt: "Muffin Tin", quant: ""),
    const CookwareIngredientsCard(txt: "Cake Pan", quant: ""),
    const CookwareIngredientsCard(txt: "Loaf Pan", quant: ""),
    const CookwareIngredientsCard(txt: "Pizza Pan", quant: ""),
    const CookwareIngredientsCard(txt: "Pressure Cooker", quant: ""),
    const CookwareIngredientsCard(txt: "Slow Cooker", quant: ""),
    const CookwareIngredientsCard(txt: "Mixing Bowl", quant: ""),
  ];

  static const List<CookwareIngredientsCard> ingredient = [
    const CookwareIngredientsCard(txt: "Tomato", quant: "2 kg"),
    const CookwareIngredientsCard(txt: "Beef", quant: "500 g"),
    const CookwareIngredientsCard(txt: "Chicken", quant: "1 kg"),
    const CookwareIngredientsCard(txt: "Onion", quant: "1/2 onion"),
    const CookwareIngredientsCard(txt: "Garlic", quant: "3 cloves"),
    const CookwareIngredientsCard(txt: "Potato", quant: "4 potatoes"),
    const CookwareIngredientsCard(txt: "Carrot", quant: "2 carrots"),
    const CookwareIngredientsCard(txt: "Bell Pepper", quant: "1 pepper"),
    const CookwareIngredientsCard(txt: "Eggplant", quant: "1 eggplant"),
    const CookwareIngredientsCard(txt: "Zucchini", quant: "2 zucchinis"),
    const CookwareIngredientsCard(txt: "Rice", quant: "250 g"),
    const CookwareIngredientsCard(txt: "Lentils", quant: "200 g"),
    const CookwareIngredientsCard(txt: "Chickpeas", quant: "1 cup"),
    const CookwareIngredientsCard(txt: "Beans", quant: "1 cup"),
    const CookwareIngredientsCard(txt: "Cheese", quant: "150 g"),
    const CookwareIngredientsCard(txt: "Milk", quant: "500 ml"),
    const CookwareIngredientsCard(txt: "Egg", quant: "2 eggs"),
    const CookwareIngredientsCard(txt: "Butter", quant: "50 g"),
    const CookwareIngredientsCard(txt: "Olive Oil", quant: "2 tbsp"),
    const CookwareIngredientsCard(txt: "Flour", quant: "250 g"),
  ];

  static const List<Instructions> instructions = [
    const Instructions(
      number: "1",
      title: "Prepare the Ingredients",
      details:
          "Wash the tomatoes and lentils thoroughly. Chop the onion, tomatoes, and garlic, and prepare all the spices before you start cooking.",
    ),
    const Instructions(
      number: "2",
      title: "Sauté the Onion",
      details:
          "Heat 2 tablespoons of olive oil in a large pot over medium heat. Add half a chopped onion and cook for 3–4 minutes until soft and translucent.",
    ),
    const Instructions(
      number: "3",
      title: "Add Garlic and Spices",
      details:
          "Add 3 minced garlic cloves, 1 teaspoon turmeric, 1/2 teaspoon cumin, and a pinch of black pepper. Stir for about 1 minute until fragrant.",
    ),
    const Instructions(
      number: "4",
      title: "Cook the Tomatoes",
      details:
          "Add the chopped tomatoes and stir well. Cook for about 5 minutes until the tomatoes soften and begin to form a light sauce.",
    ),
    const Instructions(
      number: "5",
      title: "Add the Lentils",
      details:
          "Add the rinsed red lentils and mix them with the tomato mixture. Pour in about 2 cups of water or vegetable stock and bring everything to a boil.",
    ),
    const Instructions(
      number: "6",
      title: "Simmer the Dahl",
      details:
          "Reduce the heat to low and partially cover the pot. Simmer for 15–20 minutes, stirring occasionally, until the lentils become soft and creamy.",
    ),
    const Instructions(
      number: "7",
      title: "Cook the Rice",
      details:
          "Wash the rice thoroughly and place it in a separate pot with water and a pinch of salt. Bring to a boil, then reduce the heat and cook until tender.",
    ),
    const Instructions(
      number: "8",
      title: "Adjust the Seasoning",
      details:
          "Check the consistency of the dahl and add a little water if it is too thick. Taste and adjust the salt and spices as needed.",
    ),
    const Instructions(
      number: "9",
      title: "Serve",
      details:
          "Place the cooked rice on a serving plate and spoon the tomato and lentil dahl over it. Garnish with fresh cilantro and a little black pepper.",
    ),
    const Instructions(
      number: "10",
      title: "Final Touch",
      details:
          "Let the dish rest for 2 minutes before serving. Serve hot with fresh lemon wedges on the side for an extra burst of flavor.",
    ),
  ];

}