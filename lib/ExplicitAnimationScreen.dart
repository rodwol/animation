import 'package:flutter/material.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  @override
  _ExplicitAnimationScreenState createState() => _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController and define the duration
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    // Define the rotation from 0 to 1 full turn (360 degrees)
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    // Dispose of the controller to free up resources
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    // Reset and play animation forward
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explicit Animation"),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Icon(Icons.refresh, size: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
