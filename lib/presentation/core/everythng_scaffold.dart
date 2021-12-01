
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

class EverythngScaffold extends StatefulWidget {
  final Widget body;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  const EverythngScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton, this.appBar, this.bottomNavigationBar,
  }) : super(key: key);

  @override
  _EverythngScaffoldState createState() => _EverythngScaffoldState();
}

class _EverythngScaffoldState extends State<EverythngScaffold> {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.white,
      child: Scaffold(
        body: widget.body,
        appBar: widget.appBar,
        bottomNavigationBar: widget.bottomNavigationBar ,
      ),
    );
  }
}