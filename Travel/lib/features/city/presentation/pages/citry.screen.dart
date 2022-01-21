import 'package:flutter/material.dart';
import 'package:travel/core/constant/assets.dart';
import 'package:sizer/sizer.dart';
import 'package:travel/core/widget/custom_tabbar.dart';
import 'package:travel/core/widget/like_button.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/core/widget/medium_primary_button.dart';
import 'package:travel/core/widget/rate_widget.dart';
import 'package:travel/core/widget/small_secondary_button.dart';
import 'package:travel/features/city/presentation/widgets/overview.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assets.parisImg,
              height: 60.0.h,
              width: 100.0.w,
              fit: BoxFit.fitHeight,
            ),
            _buildAppBar(context),
            _buildInfoCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black.withOpacity(0.3), Colors.transparent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.pop();
              },
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
            const LikeButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
        ),
        width: 100.0.w,
        height: 48.0.h,
        child: Padding(
          padding: EdgeInsets.only(
            top: 3.0.h,
            right: 5.0.w,
            left: 5.0.w,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Paris, France",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "\$2800",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.0.h,
              ),
              RateWidget(),
              SizedBox(
                height: 1.0.h,
              ),
              CustomTab(
                  tabController: _tabController,
                  tabs: const ["Overview", "Details", "Reviews", "Costs"]),
              SizedBox(
                height: 3.0.h,
              ),
              const Overview(),
              SizedBox(
                height: 3.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [SmallSecondaryButton(), MediumPrimaryButton()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
