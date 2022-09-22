import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final MyInheritedData appData;
  final Widget child;
  const MyInheritedWidget({
      Key? key, 
      required this.appData, 
      required this.child
    })
      : super(
          key: key, 
          child: child);

  static MyInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();

  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
    return true;
  }
}

class MyInheritedData {
  late bool isFavorite;

  MyInheritedData({
    required this.isFavorite
  });

  changeColor() {
    isFavorite = !isFavorite;
  }
}