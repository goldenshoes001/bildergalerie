import "package:bildergaliere/class/text_widget.dart";
import "package:flutter/material.dart";

class GalleryItem extends StatelessWidget {
  const GalleryItem({
    super.key,
    required this.imageTitle,
    required this.imagePath,
    this.imageDescription = "",
    this.imageDate = "",
  });
  final String imageTitle;
  final String imagePath;
  final String imageDescription;
  final String imageDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        SizedBox(height: 10),
        TextWidget(
          text: imageTitle,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          fontStyle: FontStyle.italic,
        ),
      ],
    );
  }
}
