import 'package:flutter/material.dart';

class RefCoinsCustomButton extends StatefulWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;
  final double borderRadius;

  const RefCoinsCustomButton({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.onTap,
    this.borderRadius = 5.0,
    required this.textColor,
  }) : super(key: key);

  @override
  _RefCoinsCustomButtonState createState() => _RefCoinsCustomButtonState();
}

class _RefCoinsCustomButtonState extends State<RefCoinsCustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 209,
        height: 53,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              widget.borderRadius,
            ),
            color: widget.backgroundColor),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
