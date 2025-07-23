import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild2 extends StatelessWidget {
  Bild2({super.key});

  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden

  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[1].imageTitle,
      imageDate: galerieItems[1].imageDate,
      imageDescription: galerieItems[1].imageDescription,
      imagePath: galerieItems[1].imagePath,
    );
  }
}
