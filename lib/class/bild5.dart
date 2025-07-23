import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild5 extends StatelessWidget {
  Bild5({super.key});
  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden

  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[4].imageTitle,
      imageDate: galerieItems[4].imageDate,
      imageDescription: galerieItems[4].imageDescription,
      imagePath: galerieItems[4].imagePath,
    );
  }
}
