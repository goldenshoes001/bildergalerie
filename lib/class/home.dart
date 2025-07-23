import 'package:bildergaliere/class/gallery_data.dart' as gallery_data;
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<GalleryItem> galerieItems = gallery_data.galleryData;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.5,
          mainAxisSpacing: 10,
        ),
        itemCount: galerieItems.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return galerieItems[index];
        },
      ),
    );
  }
}
