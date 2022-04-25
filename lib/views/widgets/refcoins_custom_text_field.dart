import 'package:flutter/material.dart';

class RefCoinsCustomTextField extends StatefulWidget {
  final double borderRadius;
  final String hintText;
  final Color backgroundColor;
  final Color borderColor;
  final TextEditingController textEditingController;
  final TextInputType? keyBoardType;
  bool isPassword;

  RefCoinsCustomTextField({
    Key? key,
    this.borderRadius = 8.0,
    this.isPassword = false,
    required this.hintText,
    required this.backgroundColor,
    required this.borderColor,
    required this.textEditingController,
    this.keyBoardType,
  }) : super(key: key);

  @override
  _RefCoinsCustomTextFieldState createState() =>
      _RefCoinsCustomTextFieldState();
}

class _RefCoinsCustomTextFieldState extends State<RefCoinsCustomTextField> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? isPasswordVisible : false,
      controller: widget.textEditingController,
      keyboardType: widget.keyBoardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor,
            width: 1.0,
          ),
        ),
        hintText: widget.hintText,
        filled: true,
        fillColor: widget.backgroundColor,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                  size: 18,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
            : SizedBox(),
      ),
    );
  }
}
