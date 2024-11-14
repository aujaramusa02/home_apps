import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery screen'),
      ),
      body: Center(
        child: Text('Gallery work'),
      ),
    );
  }
}
