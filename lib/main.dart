import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white54,
      title: kIsWeb
          ? Row(
              children: [
                const CircleAvatar(
                  foregroundImage:
                      NetworkImage("https://picsum.photos/200/300"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    kIsWeb.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87),
                  ),
                )
              ],
            )
          : Row(children: [
              const CircleAvatar(
                foregroundImage: NetworkImage("https://picsum.photos/200/300"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  kIsWeb.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87),
                ),
              )
            ]),
    ));
  }
}
