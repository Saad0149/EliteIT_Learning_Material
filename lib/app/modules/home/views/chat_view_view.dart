import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChatView extends GetView {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChatViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
