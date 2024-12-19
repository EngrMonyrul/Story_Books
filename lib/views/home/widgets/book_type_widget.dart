import 'package:flutter/material.dart';

import '../../../utils/constants/components_consts.dart';

class BookTypeWidget extends StatelessWidget {
  const BookTypeWidget({super.key, this.pressedOnItems, this.isSelected, this.item});

  final VoidCallback? pressedOnItems;
  final bool? isSelected;
  final String? item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: pressedOnItems,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: isSelected ?? false
              ? ComponentsConsts.colorBase
              : ComponentsConsts.colorSecondary,
        ),
        child: Text(
          item ?? "",
          style: const TextStyle(
            color: ComponentsConsts.colorOnBase,
          ),
        ),
      ),
    );
  }
}
