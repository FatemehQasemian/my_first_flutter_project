import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPressed, required this.heroTag});

  final IconData icon;
  final VoidCallback? onPressed;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      margin: const EdgeInsets.all(0),
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: onPressed,
          heroTag: heroTag,
          backgroundColor: const Color(0xFF4C4F5E),
          elevation: 0.0,
          child: Icon(
            icon,
            size: 40.0,
          ),
        ),
      ),
    );
  }
}
