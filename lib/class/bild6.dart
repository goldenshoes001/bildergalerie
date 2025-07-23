import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild6 extends StatelessWidget {
  Bild6({super.key});

  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden

  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[5].imageTitle,
      imageDate: galerieItems[5].imageDate,
      imageDescription: galerieItems[5].imageDescription,
      imagePath: galerieItems[5].imagePath,
    );
  }
}
