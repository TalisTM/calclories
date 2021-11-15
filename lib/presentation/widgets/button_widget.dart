import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final bool outline;
  final VoidCallback onPressed;
  const ButtonWidget({
    required this.label,
    required this.onPressed,
    this.outline = false,
    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color textColor;
    Color backgroundColor;

    if(outline) {
      textColor = Theme.of(context).primaryColor;
      backgroundColor = Colors.white;
    } else {
      textColor = Theme.of(context).backgroundColor;
      backgroundColor = Theme.of(context).primaryColor;
    }

    return TextButton(
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w700,
          fontSize: 22
        )
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          const Size.fromHeight(50)
        ),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Theme.of(context).primaryColor)
          )
        ),
      ),
      onPressed: onPressed,
    );
  }
}