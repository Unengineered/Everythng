
import 'package:flutter/material.dart';

class EverythngScaffold extends StatefulWidget {
  final Widget body;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;

  const EverythngScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton, this.appBar,
  }) : super(key: key);

  @override
  _EverythngScaffoldState createState() => _EverythngScaffoldState();
}

class _EverythngScaffoldState extends State<EverythngScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: widget.floatingActionButton,
      body: widget.body,
      appBar: widget.appBar,
    );
  }
}