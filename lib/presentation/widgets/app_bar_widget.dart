import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String label;
  final bool back;
  const AppBarWidget({
    this.label = "",
    this.back = false,
    Key? key
    }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/images/fireboll.png',
            height: 30,
          ),
          const SizedBox(width: 7),
          Column(
            children: [
              const SizedBox(height: 7),
              Text(label),
            ],
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      leading: back
        ? IconButton(
            icon: const Icon(Icons.arrow_back_ios, size: 30),
            onPressed: () => Navigator.pop(context),
          )
        : null
    );
  }
}