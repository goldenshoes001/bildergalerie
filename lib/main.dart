import 'package:bildergaliere/class/appbar.dart';
import 'package:bildergaliere/class/appdata.dart';
import 'package:bildergaliere/class/bottombar.dart';
import 'package:bildergaliere/class/home.dart';
import 'package:bildergaliere/class/likes.dart';
import 'package:bildergaliere/class/news.dart';
import 'package:bildergaliere/class/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppHome());
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    widgetName = getCurrentScreenTitle();
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      widgetName = getCurrentScreenTitle();
    });
  }

  String getCurrentScreenTitle() {
    String widgetName = screens[currentIndex].runtimeType.toString();
    return widgetName;
  }

  late String widgetName;

  List<Widget> screens = [Home(), Likes(), Profile(), News()];
  List<NavigationDestination> navigationItems = [
    NavigationDestination(icon: Icon(Icons.home), label: "home"),
    NavigationDestination(icon: Icon(Icons.heart_broken), label: "likes"),
    NavigationDestination(icon: Icon(Icons.person), label: "profile"),
    NavigationDestination(icon: Icon(Icons.newspaper), label: "news"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Appdata.bodyBackground,
        appBar: Barwidget(title: widgetName, barColor: Appdata.barColor),
        body: screens[currentIndex],
        bottomNavigationBar: Bottombar(
          currentIndex: currentIndex,
          valueChanged: _onItemTapped,
          navigationItems: navigationItems,
          backgroundColor: Appdata.barColor,
          indicatorColor: Appdata.indicatorColor,
          selectedIconColor: Appdata.selectedItemColor,
          selectedLabelColor: Appdata.selectedItemColor,
          unselectedIconColor: Appdata.buttomBarElemente,
          selectedIconSize: Appdata.sizeSelectedIcons,
          unselectedIconSize: Appdata.sizeIcons,
        ),
      ),
    );
  }
}
