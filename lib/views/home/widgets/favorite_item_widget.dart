import 'package:flutter/material.dart';
import 'package:story_book/models/trending_item.dart';
import 'package:story_book/utils/constants/components_consts.dart';

class FavoriteItemWidget extends StatelessWidget {
  const FavoriteItemWidget({super.key, this.item});

  final TrendingItems? item;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: 200,
      width: screenSize.width * .7,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: ComponentsConsts.colorBase,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /* <<--------->> book name <<---------->> */
                      Text(
                        item?.name ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ComponentsConsts.colorOnBase,
                          fontSize: 22,
                        ),
                      ),

                      /* <<--------->> book author <<---------->> */
                      Text(
                        item?.author ?? "",
                        style: const TextStyle(
                          color: ComponentsConsts.colorOnBase,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /* <<--------->> book image <<---------->> */
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  item?.imgUrl ?? "",
                  height: 100,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          /* <<--------->> book description <<---------->> */
          Text(
            item?.description ?? "",
            style: const TextStyle(
              color: ComponentsConsts.colorOnBase,
            ),
          ),
        ],
      ),
    );
  }
}
