
import 'package:flutter/material.dart';
import 'package:responsive/mobile.dart';
import 'package:responsive/web.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        print(constraints.minWidth.toInt());

        //String os = Platform.operatingSystem;
        //print(getOS);

        if(constraints.minWidth.toInt() <= 560) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: .5,

              ),
              child: const Mobile());
        }

        return const Web();
      }),
    );
  }
}
