import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.teal,
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: const [
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'email'
                  ),
                ),
              )
            ],
          ),
        )
      ],),
    );
  }
}
