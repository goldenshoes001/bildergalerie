import 'package:bildergaliere/class/bild1.dart';
import 'package:bildergaliere/class/bild2.dart';
import 'package:bildergaliere/class/bild3.dart';
import 'package:bildergaliere/class/bild4.dart';
import 'package:bildergaliere/class/bild5.dart';
import 'package:bildergaliere/class/bild6.dart';
import 'package:bildergaliere/class/bild7.dart';
import 'package:bildergaliere/class/gallery_data.dart';
import 'package:bildergaliere/class/galleryitem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<Widget> screens = [
    Bild1(),
    Bild2(),
    Bild3(),
    Bild4(),
    Bild5(),
    Bild6(),
    Bild7(),
  ];

  @override
  Widget build(BuildContext context) {
    List<GalleryItem> galerieItems = GalleryData.galleryData;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1.5,
        mainAxisSpacing: 10,
      ),
      itemCount: galerieItems.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screens[index]),
            );
          },
          child: galerieItems[index],
        );
      },
    );
  }
}
