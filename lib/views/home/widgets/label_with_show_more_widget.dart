import 'package:flutter/material.dart';
import 'package:story_book/utils/constants/components_consts.dart';

class LabelWithShowMoreWidget extends StatelessWidget {
  const LabelWithShowMoreWidget(
      {super.key, this.label, this.pressedOnShowMore});

  final String? label;
  final VoidCallback? pressedOnShowMore;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /* <<--------->> label <<---------->> */
        Text(
          label ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const Spacer(),

        /* <<--------->> show more button <<---------->> */
        InkWell(
          onTap: pressedOnShowMore,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: ComponentsConsts.colorBase,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                /* <<--------->> show more <<---------->> */
                Text(
                  "Show More",
                  style: TextStyle(
                    color: ComponentsConsts.colorOnBase,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),

                /* <<--------->> arrow <<---------->> */
                Icon(
                  Icons.arrow_forward_ios,
                  color: ComponentsConsts.colorOnBase,
                  size: 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
