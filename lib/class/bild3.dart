import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild3 extends StatelessWidget {
  Bild3({super.key});

  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden

  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[2].imageTitle,
      imageDate: galerieItems[2].imageDate,
      imageDescription: galerieItems[2].imageDescription,
      imagePath: galerieItems[2].imagePath,
    );
  }
}
