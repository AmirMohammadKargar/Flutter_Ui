import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    required TabController tabController,
    required this.tabs,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;
  final List<String> tabs;
  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: _tabController,
        tabs: [
          ...List.generate(
            tabs.length,
            (index) => Tab(
              text: tabs[index],
            ),
          )
        ],
        isScrollable: true,
        labelStyle: Theme.of(context).textTheme.bodyText2,
        labelColor: Theme.of(context).primaryColor,
        indicator: CircleTabIndicator(
            color: Theme.of(context).primaryColor, radius: 4),
        indicatorColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Theme.of(context).accentColor);
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
