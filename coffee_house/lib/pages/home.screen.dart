import 'package:coffee_house/pages/checkout.screen.dart';
import 'package:coffee_house/widgets/category_item.widget.dart';
import 'package:coffee_house/widgets/coffee_item.widget.dart';
import 'package:coffee_house/widgets/custom_circle_button.widget.dart';
import 'package:coffee_house/widgets/popular_coffee_card.widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).primaryColorDark,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CheckoutScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.shopping_bag,
              color: Theme.of(context).primaryColorDark,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).primaryColorLight,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            hintText: 'Search here',
                            hintStyle: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const CustomCircleButton(
                      iconData: Icons.settings,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 15,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ListView.separated(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CategoryItem(
                          title: "Recommended",
                          selected: index == 0,
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 15,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 335,
                  child: ListView.separated(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 30,
                      );
                    },
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CoffeeItem(
                          index: index,
                        ),
                      );
                    }),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Coffees",
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 15,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: ListView.separated(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 5,
                      );
                    },
                    itemBuilder: ((context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: PopularCoffeeCard(),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
