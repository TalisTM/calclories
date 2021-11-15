import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? primaryLabel;
  final VoidCallback? primaryButton;
  final String? secundaryLabel;
  final VoidCallback? secundaryButton;
  const DialogWidget({
    required this.title,
    this.subtitle,
    this.primaryLabel,
    this.primaryButton,
    this.secundaryLabel,
    this.secundaryButton,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).primaryColor
        )
      ),
      content: subtitle != null 
        ? Text(
          subtitle!,
          style: Theme.of(context).textTheme.subtitle1,
        )
        : null,
      actions: [
        if(secundaryLabel != null && secundaryButton != null)
          TextButton(
            child: Text(
              secundaryLabel!,
              style: TextStyle(
                color: Theme.of(context).primaryColor
              )
            ),
            onPressed: secundaryButton,
          ),
        if(primaryLabel != null && primaryButton != null)
          TextButton(
            child: Text(
              primaryLabel!,
              style: TextStyle(
                color: Theme.of(context).primaryColor
              )
            ),
            onPressed: primaryButton,
          ),
      ],
    );
  }
}