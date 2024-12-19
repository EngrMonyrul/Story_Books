import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_book/utils/constants/components_consts.dart';

class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 12,
      ),
      decoration: BoxDecoration(
        color: ComponentsConsts.colorBase,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          /* <<--------->> slogan <<---------->> */
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /* <<--------->> slogan <<---------->> */
                const Text(
                  "Read More, Explore More: Your World in Words.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ComponentsConsts.colorOnBase,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                /* <<--------->> button <<---------->> */
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: ComponentsConsts.colorOnBase,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /* <<--------->> search <<---------->> */
                      Text(
                        "Explore More",
                        style: TextStyle(
                          color: ComponentsConsts.colorBase,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),

                      /* <<--------->> search icon <<---------->> */
                      Icon(
                        CupertinoIcons.search,
                        size: 13,
                        color: ComponentsConsts.colorBase,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),

          /* <<--------->> reading image <<---------->> */
          Image.asset(ComponentsConsts.imgReading),
        ],
      ),
    );
  }
}
