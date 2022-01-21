import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/core/constant/assets.dart';
import 'package:travel/core/widget/custom_tabbar.dart';
import 'package:travel/core/widget/search_textfield.dart';
import 'package:travel/features/home/data/fixtures/categories.dart';
import 'package:travel/features/home/presentation/widgets/category_item.dart';
import 'package:travel/features/home/presentation/widgets/citry_widget.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 8.0.w,
          color: Theme.of(context).primaryIconTheme.color,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.0.w,
            ),
            child: Center(
              child: Container(
                width: 10.0.w,
                height: 10.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                ),
                child: Image.asset(Assets.avatar),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.0.w,
            vertical: 2.0.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.0.h,
                ),
                Text(
                  "Explore the best places in world.",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                const SearchTextField(),
                SizedBox(
                  height: 3.0.h,
                ),
                CustomTab(
                  tabController: _tabController,
                  tabs: const ['All', 'America', 'Europe', 'Asia', 'Ocenia'],
                ),
                SizedBox(
                  height: 34.0.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0.w),
                            child: CityWidget(
                              image: Assets.paris,
                              name: "Paris, France",
                              price: "2800",
                              onTap: () {
                                context.go('/home/city');
                              },
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 3.0.h,
                ),
                Text("Popular Categories",
                    style: Theme.of(context).textTheme.headline5),
                SizedBox(
                  height: 2.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      categories.length,
                      (index) => CategoryItem(
                        title: categories[index].title,
                        image: categories[index].image,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
