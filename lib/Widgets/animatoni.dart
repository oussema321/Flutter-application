import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedImageState();
  }
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset("assets/images/rocket_person.png"),
    );
  }
}
