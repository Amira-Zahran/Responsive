import 'package:flutter/material.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.teal,
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'email'
                      ),
                    ),
                  ),
                  //AdaptiveIndicator(os: getOS())
                ],
              ),
            )
          ],
    ));
  }
}
