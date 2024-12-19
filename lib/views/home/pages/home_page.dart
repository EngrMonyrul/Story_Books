import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_book/utils/constants/components_consts.dart';
import 'package:story_book/views/home/widgets/book_type_widget.dart';
import 'package:story_book/views/home/widgets/favorite_item_widget.dart';
import 'package:story_book/views/home/widgets/hero_section_widget.dart';
import 'package:story_book/views/home/widgets/label_with_show_more_widget.dart';

import '../widgets/scrollabe_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* <<--------->> variables <<---------->> */
  String _selectedBookType = ComponentsConsts.booksType.first;
  late PageController controller;
  double currentPage = 0;

  void setPageController() {
    controller =
        PageController(initialPage: ComponentsConsts.trendingItems.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });

    setState(() {});
  }

  @override
  void initState() {
    setPageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      /* <<--------->> appbar <<---------->> */
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGrey5,
        actions: [
          const SizedBox(
            width: 10,
          ),

          /* <<--------->> profile picture <<---------->> */
          IconButton(
            onPressed: () {},
            icon: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: ComponentsConsts.colorBase,
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(ComponentsConsts.imgProfile),
              ),
            ),
          ),

          /* <<--------->> language section <<---------->> */
          const Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /* <<--------->> globe icon <<---------->> */
                Icon(Icons.language),
                SizedBox(
                  width: 5,
                ),

                /* <<--------->> language selection <<---------->> */
                Text(
                  "English",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),

                /* <<--------->> drop down icon <<---------->> */
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          ),

          /* <<--------->> notification <<---------->> */
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: ComponentsConsts.colorBase,
              child: Icon(
                Icons.notifications_active_rounded,
                color: ComponentsConsts.colorOnBase,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),

      /* <<--------->> body <<---------->> */
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            /* <<--------->> hero section <<---------->> */
            const HeroSectionWidget(),

            /* <<--------->> trending label <<---------->> */
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LabelWithShowMoreWidget(
                label: "Trending",
                pressedOnShowMore: () {},
              ),
            ),

            /* <<--------->> tab bar <<---------->> */
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  children:
                      ComponentsConsts.booksType.asMap().entries.map((element) {
                    return BookTypeWidget(
                      isSelected: _selectedBookType == element.value,
                      item: element.value,
                      pressedOnItems: () {
                        setState(() {
                          _selectedBookType = element.value;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
            ),

            /* <<--------->> trending items <<---------->> */
            Stack(
              children: [
                ScrollableCardWidget(currentPage: currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: ComponentsConsts.trendingItems.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                ),
              ],
            ),

            /* <<--------->> favorite label <<---------->> */
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LabelWithShowMoreWidget(
                label: "Favorite",
                pressedOnShowMore: () {},
              ),
            ),

            /* <<--------->> favorite items <<---------->> */
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: ComponentsConsts.trendingItems
                    .asMap()
                    .entries
                    .map((element) {
                  final item = ComponentsConsts.trendingItems[element.key];
                  return FavoriteItemWidget(
                    item: item,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
