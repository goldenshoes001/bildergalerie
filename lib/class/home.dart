import 'package:bildergaliere/class/appdata.dart';
import 'package:bildergaliere/class/detail_screen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1.5,
        mainAxisSpacing: 10,
      ),
      itemCount: galleryData.length,
      scrollDirection: Axis.vertical,

      itemBuilder: (BuildContext context, int index) {
        final GalleryItem currentItem = galleryData[index];
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
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Appdata.barColor,
            child: GalleryItem(
              imageTitle: currentItem.imageTitle,
              imagePath: currentItem.imagePath,
              imageDate: currentItem.imageDate,
              imageDescription: currentItem.imageDescription,
            ),
          ),
        );
      },
    );
  }
}
