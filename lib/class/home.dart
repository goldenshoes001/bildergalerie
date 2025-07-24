import 'package:bildergaliere/class/detail_screen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<GalleryItem> galerieItems = GalleryData.galleryData;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        mainAxisSpacing: 10,
      ),
      itemCount: galerieItems.length,
      scrollDirection: Axis.vertical,

      itemBuilder: (BuildContext context, int index) {
        final GalleryItem currentItem = galerieItems[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  imageTitle: currentItem.imageTitle,
                  imageDate: currentItem.imageDate,
                  imageDescription: currentItem.imageDescription,
                  imagePath: currentItem.imagePath,
                ),
              ),
            );
          },
          child: GalleryItem(
            imageTitle: currentItem.imageTitle,
            imagePath: currentItem.imagePath,
            imageDate: currentItem.imageDate,
            imageDescription: currentItem.imageDescription,
          ),
        );
      },
    );
  }
}
