import 'package:coffee_house/pages/home.screen.dart';
import 'package:coffee_house/widgets/add_cart_button.widget.dart';
import 'package:coffee_house/widgets/coffee_image.widget.dart';
import 'package:coffee_house/widgets/counter.widget.dart';
import 'package:coffee_house/widgets/custom_circle_button.widget.dart';
import 'package:coffee_house/widgets/rate.widget.dart';
import 'package:coffee_house/widgets/size_selector.widget.dart';
import 'package:flutter/material.dart';

class CoffeeScreen extends StatefulWidget {
  final int index;
  const CoffeeScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cappoccino",
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red[700],
            ),
          )
        ],
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: AddCartButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoffeeImage(widget: widget),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const SizeSelector(
                    items: ['Small', 'Medium', 'Large'],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Qty.',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Counter(
                          verticalPadding: 5,
                          horizontalPadding: 5,
                        )
                      ],
                    ),
                    const Rate(),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '''Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum umquam blanditiis harum quisquam eius sed''',
                  style: TextStyle(
                    height: 1.8,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
