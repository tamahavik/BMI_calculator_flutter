import 'package:flutter/material.dart';

class ReusabelCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final Function? onTap;

  const ReusabelCard({required this.color, this.child, super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Function fn = onTap ?? () {};
        fn();
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
