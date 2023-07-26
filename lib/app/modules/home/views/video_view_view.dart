import 'package:flutter/material.dart';

import 'package:get/get.dart';

class VideoView extends GetView {
  const VideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VideoViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VideoViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
