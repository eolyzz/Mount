import 'package:flutter/material.dart';

class CartNavBar extends StatelessWidget {
  const CartNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/call');
              },
              icon: Icon(Icons.phone)),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text('Checkout(N14,250)')),
            ]),
            color: Colors.yellow.shade800,
            width: 350,
          ),
        ]),
      ),
    );
  }
}
