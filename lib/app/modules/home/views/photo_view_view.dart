import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PhotoView extends GetView {
  const PhotoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhotoViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PhotoViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
