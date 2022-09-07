import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';

class accountPage extends StatefulWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                /* Welcome + firstname and email address*/

                child: Text('Welcome, Customer'),
              ),
              Container(
                color: Colors.grey.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Profile'),
                    Text('Delivery Address'),
                    Text('Change Password'),
                  ],
                ),
              ),
              Text('Logout'),
            ],
          ),
        ],
      ),
    );
  }
}
