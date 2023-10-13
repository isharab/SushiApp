import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/models/food.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu

  List foodMenu = [
    Food(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'assets/images/salmon_sushi.png',
      rating: '4.9',
    ),
    Food(
      name: 'Tuna',
      price: '23.40',
      imagePath: 'assets/images/tuna.png',
      rating: '4.5',
    ),
    // Food(
    //   name: 'Salmon Sushi',
    //   price: '21.00',
    //   imagePath: 'assets/images/sushi',
    //   rating: '4.9',
    // ),
    // Food(
    //   name: 'Salmon Sushi',
    //   price: '21.00',
    //   imagePath: 'assets/images/sushi',
    //   rating: '4.9',
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Sialkot',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // promo msg
                    Text('Get 30% Promo',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 20),
                    // redeem button
                    MyButton(
                      text: 'Redeen',
                      onTap: () {},
                    )
                  ],
                ),

                // promo image
                Image.asset(
                  'assets/images/sushis.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Search Food',
              ),
            ),
          ),

          const SizedBox(height: 25),
          // menu list

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // popular food items

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image
                Row(
                  children: [
                    Image.asset(
                      'assets/images/salmon_eggs.png',
                      height: 60,
                    ),

                    const SizedBox(width: 20),
                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name
                        Text(
                          'Salmon Eggs',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),

                        const SizedBox(height: 10),
                        // price
                        Text(
                          '\$ 21.00',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // heart
                Icon(Icons.favorite_border, color: Colors.grey[700])
              ],
            ),
          )
        ],
      ),
    );
  }
}
