import 'package:flutter/widgets.dart';

class GalleryExampleItem {
  GalleryExampleItem({
    required this.id,
    required this.resource,
    this.isSvg = false,
  });

  final String id;
  final String resource;
  final bool isSvg;
}

class GalleryExampleItemThumbnail extends StatelessWidget {
  const GalleryExampleItemThumbnail({
    Key? key,
    required this.galleryExampleItem,
    required this.onTap,
  }) : super(key: key);

  final GalleryExampleItem galleryExampleItem;

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: galleryExampleItem.id,
          child: Image.network(galleryExampleItem.resource, height: 80.0),
        ),
      ),
    );
  }
}

List<GalleryExampleItem> galleryItems = <GalleryExampleItem>[
  GalleryExampleItem(
    id: "tag1",
    resource:
        "https://image.freepik.com/free-psd/merry-christmas-happy-new-year-with-3d-christmas-ornaments_106244-1813.jpg",
  ),
  GalleryExampleItem(
      id: "tag2",
      resource:
          "https://image.freepik.com/free-photo/floating-gift-box-color-year-2022_23-2149217425.jpg",
      isSvg: true),
  GalleryExampleItem(
    id: "tag3",
    resource:
        "https://image.freepik.com/free-photo/front-view-hand-held-clock-with-copy-space_23-2148385872.jpg",
  ),
  GalleryExampleItem(
    id: "tag4",
    resource:
        "https://image.freepik.com/free-photo/chinese-new-year-still-life-tiger-celebration_23-2149210700.jpg",
  ),
];
