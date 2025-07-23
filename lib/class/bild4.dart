import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild4 extends StatelessWidget {
  Bild4({super.key});

  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden

  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[3].imageTitle,
      imageDate: galerieItems[3].imageDate,
      imageDescription: galerieItems[3].imageDescription,
      imagePath: galerieItems[3].imagePath,
    );
  }
}
