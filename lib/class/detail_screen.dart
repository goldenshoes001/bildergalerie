import 'package:bildergaliere/class/appdata.dart';
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
        title: Text(
          "Detailseite von $imageTitle",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Appdata.barColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Appdata.bodyBackground,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
          ],
        ),
      ),
    );
  }
}
