import 'package:flutter/material.dart';


class OvalInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const OvalInkWell({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: child,
      ),
    );
  }
}