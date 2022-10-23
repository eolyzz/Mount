import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CartAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(title),
      ]),
      centerTitle: true,
      backgroundColor: Colors.yellow[800],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
