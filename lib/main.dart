import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1C0F0D),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C0F0D),
          centerTitle: true,
          title: const Text(
            "Breakfast",
            style: TextStyle(
                color: Color(0xFFFD5D69),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none),
          ),
          leading: SvgPicture.asset(
            "assets/icons/backarrow.svg",
            width: 23,
            height: 14,
            fit: BoxFit.none,
          ),
          actions: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                  color: Color(0xFFFFC6C9),
                  borderRadius: BorderRadius.circular(14)),
              child: SvgPicture.asset(
                "assets/icons/notification.svg",
                fit: BoxFit.none,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                  color: Color(0xFFFFC6C9),
                  borderRadius: BorderRadius.circular(14)),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                fit: BoxFit.none,
              ),
            ),
          ],
          bottom: AppBarBottom(),
        ),
        extendBody: true,
        body: ListView(
          padding: EdgeInsets.only(bottom: 140),
          children: const [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(
                      image: "assets/Eggs Benedict.png",
                      title: "Eggs Benedict",
                      desc: "Muffin with Canadian bacon",
                      rating: "5",
                      duration: "15min",
                    ),
                    CategoryItem(
                      image: "assets/French Toast.png",
                      title: "French Toast",
                      desc: "Delicious slices of bread",
                      rating: "5",
                      duration: "20min",
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(
                      image: "assets/Oatmeal and Nut.png",
                      title: "Oatmeal and Nut ",
                      desc: "Wholesome blend for breakfast",
                      rating: "4",
                      duration: "35min",
                    ),
                    CategoryItem(
                      image: "assets/Still Life Potato.png",
                      title: "Still Life Potato",
                      desc: "Earthy, textured, rustic charm",
                      rating: "4",
                      duration: "30min",
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(
                      image: "assets/Oatmeal Granola.png",
                      title: "Oatmeal and Granola",
                      desc: "Strawberries and Blueberries",
                      rating: "4",
                      duration: "30min",
                    ),
                    CategoryItem(
                      image: "assets/sunny bruchetta.png",
                      title: "Sunny Bruschetta",
                      desc: "With Cream Cheese",
                      rating: "4",
                      duration: "30min",
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(
                      image: "assets/Omelette Cheese.png",
                      title: "Omelette Cheese",
                      desc: "Fresh Parsley",
                      rating: "4",
                      duration: "30min",
                    ),
                    CategoryItem(
                      image: "assets/Tofu Sandwich.png",
                      title: "Tofu Sandwich",
                      desc: "Microgreens",
                      rating: "4",
                      duration: "30min",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({super.key});

  Size get preferredSize => Size(
    double.infinity,
    40,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 500,
              height: 39,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Breakfast",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Lunch",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Dinner",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Vegan",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Dessert",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Drinks",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Seafood",
                    style: TextStyle(
                      color: Color(0xFFFD5D69),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.rating,
    required this.duration,
  });

  final String image, title, desc, rating, duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -73,
              right: 5,
              left: 5,
              child: Container(
                width: 159,
                height: 76,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFDF9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF3E2823),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                            color: Color(0xFF3E2823),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                rating,
                                style: const TextStyle(
                                    color: Color(0xFFEC888D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset("assets/icons/star.svg"),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              SvgPicture.asset("assets/icons/clock.svg"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                duration,
                                style: const TextStyle(
                                  color: Color(0xFFEC888D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image(
                image: AssetImage(image),
                width: 169,
                height: 153,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xFFFFC6C9)),
                child: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  fit: BoxFit.none,
                  color: Color(0xFFEC888D),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        clipBehavior: Clip.none,
        width: 299,
        height: 55,
        decoration: BoxDecoration(
            color: Color(0xFFFD5D69), borderRadius: BorderRadius.circular(33)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/icons/home.svg"),
            SvgPicture.asset("assets/icons/massages.svg"),
            SvgPicture.asset("assets/icons/categories.svg"),
            SvgPicture.asset("assets/icons/profile.svg"),
          ],
        ),
      ),
    );
  }
}
