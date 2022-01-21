import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/core/widget/circle_icon_button.dart';
import 'package:travel/features/intro/data/fixtures/intro.dart';
import 'package:travel/features/intro/presentation/widgets/intro.dart';
import 'package:go_router/go_router.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.0.h,
                child: PageView(
                  children: [
                    ...List.generate(
                      intros.length,
                      (index) => Intro(
                          title: intros[index].title,
                          description: intros[index].description,
                          image: intros[index].image),
                    ),
                  ],
                  onPageChanged: (value) {
                    _currentPageNotifier.value = value;
                  },
                ),
              ),
              CirclePageIndicator(
                itemCount: intros.length,
                currentPageNotifier: _currentPageNotifier,
                selectedDotColor: Theme.of(context).primaryColor,
                dotColor: Theme.of(context).accentColor,
              ),
              SizedBox(
                height: 5.0.h,
              ),
              CircleIconButton(
                onTap: () {
                  context.go('/home');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
