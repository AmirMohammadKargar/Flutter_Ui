import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.selected,
  }) : super(key: key);
  final String title;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: selected ? 3 : 0,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
            color:
                selected ? Theme.of(context).primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: selected ? null : Border.all(color: Colors.grey[300]!)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: selected
                    ? Colors.white
                    : Theme.of(context).primaryColorDark,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
