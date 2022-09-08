import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(title),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/cartDisplay');
            },
            icon: Icon(Icons.shopping_cart)),
      ]),
      centerTitle: true,
      backgroundColor: Colors.yellow[800],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
