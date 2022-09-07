import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';

class helpPage extends StatefulWidget {
  const helpPage({Key? key}) : super(key: key);

  @override
  State<helpPage> createState() => _helpPageState();
}

class _helpPageState extends State<helpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat),
                        TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                            onPressed: () {},
                            child: Text('Start Live Chat')),
                        // link to a whatsapp number
                      ]),
                  color: Colors.yellow.shade800,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text('About Mountain'),
                          Container(
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/garriDetails');
                                  },
                                  child: Text(
                                    'Mountain Services',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/garriDetails');
                                  },
                                  child: Text(
                                    'FAQ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            color: Colors.grey.shade100,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text('Settings'),
                          Container(
                              child: Column(
                                children: [
                                  Text('Push Notifications'),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('/garriDetails');
                                    },
                                    child: Text(
                                      'Country',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text('Language'),
                                  Text('App Version'),
                                ],
                              ),
                              color: Colors.grey.shade100),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
