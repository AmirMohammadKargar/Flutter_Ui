import 'package:coffee_house/pages/coffee.screen.dart';
import 'package:coffee_house/widgets/checkout_form.widget.dart';
import 'package:coffee_house/widgets/checkout_item.widget.dart';
import 'package:coffee_house/widgets/coupon.widget.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ...List.generate(
              2,
              (index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: CheckoutItem(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: Coupon(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: CheckoutForm(),
            ),
          ],
        ),
      ),
    );
  }
}
