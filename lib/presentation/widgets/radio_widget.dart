import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  final String value;
  final String groupValue;
  final String? subTitle;
  final Function(String?) onChanged;
  const RadioWidget({
    required this.value,
    required this.groupValue,
    this.subTitle,
    required this.onChanged,
    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(value),
      subtitle: subTitle != null ? Text(subTitle!) : null,
      value: value,
      groupValue:groupValue,
      onChanged: onChanged,
      activeColor: Theme.of(context).primaryColor,
    );
  }
}