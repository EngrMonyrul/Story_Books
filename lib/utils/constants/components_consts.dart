import 'package:flutter/material.dart';
import 'package:story_book/models/trending_item.dart';

class ComponentsConsts {
  ComponentsConsts._();

  /* <<--------->> strings <<---------->> */
  static const imgProfile =
      "https://static.vecteezy.com/system/resources/previews/041/642/170/non_2x/ai-generated-portrait-of-handsome-smiling-young-man-with-folded-arms-isolated-free-png.png";
  static const imgReading = "assets/images/panda.png";

  /* <<--------->> sizes <<---------->> */
  static var cardAspectRatio = 12.0 / 16.0;
  static var widgetAspectRatio = cardAspectRatio * 1.2;

  /* <<--------->> colors <<---------->> */
  static const colorBase = Colors.orange;
  static const colorOnBase = Colors.white;
  static const colorSecondary = Colors.blueGrey;

  /* <<--------->> items <<---------->> */
  static const booksType = [
    "All",
    "Fantasy",
    "Adventure",
    "Horror",
    "Romance",
    "Science",
    "Thriller",
    "History",
    "Mystery",
  ];
  static const trendingItems = [
    TrendingItems(
      imgUrl:
          "https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg",
      name: "SOUL",
      author: "Olivia Wilson",
      description:
          "This is a description. Where the summary of the book is included and user can estimate the story.",
    ),
    TrendingItems(
      imgUrl:
          "https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg",
      name: "HIDE AND SEEK",
      author: "Olivia Wilson",
      description:
          "This is a description. Where the summary of the book is included and user can estimate the story.",
    ),
    TrendingItems(
      imgUrl:
          "https://images-platform.99static.com//7Tzd__lpPb0VX-WVWt7OyKfFc40=/fit-in/500x500/projects-files/56/5686/568603/cd37bbc0-40b8-46e1-8c91-96ef13fea333.jpg",
      name: "The REBIRTH of YOU",
      author: "MEAGAN AUSTIN",
      description:
          "This is a description. Where the summary of the book is included and user can estimate the story.",
    ),
    TrendingItems(
      imgUrl: "https://template.canva.com/EADaopxBna4/1/0/251w-ujD6UPGa9hw.jpg",
      name: "MODERN SPACES",
      author: "Francisco Spencer",
      description:
          "This is a description. Where the summary of the book is included and user can estimate the story.",
    ),
    TrendingItems(
      imgUrl:
          "https://design-assets.adobeprojectm.com/content/download/express/public/urn:aaid:sc:VA6C2:b5be3c8a-86c1-4282-a8f7-c373aacaab1b/component?assetType=TEMPLATE&etag=20f2065493f0e20e7538089d94fdfee7&revision=0&component_id=de0b2067-4eda-45c4-866a-1c2df107ee23",
      name: "Three Flickers Later",
      author: "Tara W. Kawe",
      description:
          "This is a description. Where the summary of the book is included and user can estimate the story.",
    ),
  ];
}
