import 'package:bildergaliere/class/text_widget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.imageTitle,
    required this.imageDate,
    required this.imageDescription,
    required this.imagePath,
  });
  final String imageTitle;
  final String imageDate;
  final String imageDescription;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailseite von $imageTitle"),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 10),
              TextWidget(
                text: imageTitle,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
              SizedBox(height: 10),
              TextWidget(
                text: imageDate,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
              SizedBox(height: 10),
              TextWidget(
                text: imageDescription,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
