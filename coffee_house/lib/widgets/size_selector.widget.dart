import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({
    Key? key,
    required this.items,
  }) : super(key: key);
  final List<String> items;
  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          widget.items.length,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: selectedIndex == index
                    ? Border.all(
                        color: Theme.of(context).primaryColorDark,
                      )
                    : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      widget.items[index],
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.coffee,
                      size: ((index + 2) * (8 - index)).toDouble(),
                      color: Theme.of(context).primaryColorDark,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
