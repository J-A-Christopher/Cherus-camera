import 'package:flutter/material.dart';
import '../widgets/image_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Cherus Camera'),
      ),
      body: const ImageDisplay(),
    );
  }
}
