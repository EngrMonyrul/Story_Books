import 'dart:math';

import 'package:flutter/material.dart';
import 'package:story_book/utils/constants/components_consts.dart';

class ScrollableCardWidget extends StatefulWidget {
  const ScrollableCardWidget({super.key, this.currentPage});

  final double? currentPage;

  @override
  State<ScrollableCardWidget> createState() => _ScrollableCardWidgetState();
}

class _ScrollableCardWidgetState extends State<ScrollableCardWidget> {
  /* <<--------->> variables <<---------->> */
  var padding = 20.0;
  var verticalInset = 20.0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ComponentsConsts.widgetAspectRatio,
      child: LayoutBuilder(builder: (context, constraint) {
        var width = constraint.maxWidth;
        var height = constraint.maxHeight;

        var safeWidth = width - (2 * padding);
        var safeHeight = height - (2 * padding);

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard =
            heightOfPrimaryCard * ComponentsConsts.cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = [];

        for (var i = 0; i < ComponentsConsts.trendingItems.length; i++) {
          var delta = i - (widget.currentPage ?? 0);
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3.0, 6.0),
                          blurRadius: 10.0)
                    ]),
                child: AspectRatio(
                  aspectRatio: ComponentsConsts.cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.network(
                        ComponentsConsts.trendingItems[i].imgUrl ?? "",
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              /* <<--------->> book name <<---------->> */
                              Text(
                                ComponentsConsts.trendingItems[i].name ?? "",
                                style: const TextStyle(
                                  color: ComponentsConsts.colorOnBase,
                                  fontSize: 25.0,
                                ),
                              ),

                              /* <<--------->> book author <<---------->> */
                              Text(
                                ComponentsConsts.trendingItems[i].author ?? "",
                                style: const TextStyle(
                                  color: ComponentsConsts.colorOnBase,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),

                              /* <<--------->> book description <<---------->> */
                              Text(
                                ComponentsConsts.trendingItems[i].description ??
                                    "",
                                style: const TextStyle(
                                  color: ComponentsConsts.colorOnBase,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),

                              /* <<--------->> read button <<---------->> */
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 22.0,
                                  vertical: 6.0,
                                ),
                                decoration: BoxDecoration(
                                  color: ComponentsConsts.colorBase,
                                  borderRadius: BorderRadius.circular(
                                    20.0,
                                  ),
                                ),
                                child: const Text(
                                  "Read Now",
                                  style: TextStyle(
                                    color: ComponentsConsts.colorOnBase,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );

          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
