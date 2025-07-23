import 'package:bildergaliere/class/detailScreen.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Bild1 extends StatelessWidget {
  Bild1({super.key});

  final List<GalleryItem> galerieItems = GalleryData.galleryData;
  // Weitere Bilder können hier hinzugefügt werden
  
  @override
  Widget build(BuildContext context) {
    return DetailScreen(
      imageTitle: galerieItems[0].imageTitle,
      imageDate: galerieItems[0].imageDate,
      imageDescription: galerieItems[0].imageDescription,
      imagePath: galerieItems[0].imagePath,
    );
  }
}
