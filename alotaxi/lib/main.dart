// ignore_for_file: depend_on_referenced_packages

import 'package:alotaxi/styles/style.dart';
import 'package:alotaxi/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Alo Taxi',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          FlutterMap(
            options: MapOptions(
              keepAlive: true,
              zoom: 16,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
                tileBuilder: darkModeTileBuilder,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: ColorStyles.yellow,
                  child: const Icon(
                    Icons.call,
                    color: ColorStyles.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TaxiCard(size: size),
                const SizedBox(
                  height: 10,
                ),
                CustomBottomNavigator(size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
