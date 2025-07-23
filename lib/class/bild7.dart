import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild7 extends StatelessWidget {
  Bild7({super.key});

  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden

  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[6].imageTitle,
      imageDate: galerieItems[6].imageDate,
      imageDescription: galerieItems[6].imageDescription,
      imagePath: galerieItems[6].imagePath,
    );
  }
}
