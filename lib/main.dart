import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

int number = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            size: 30,
          ),
          centerTitle: true,
          title: Text(
            "Simple Numeric Increasing & Decreasing",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
                child: Text(
                  "$number",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 120,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 1100,
                alignment: Alignment.center,
                child: Text(
                  "(1) Pree the plus button for increasing the above value\n(2) Pree the Minus button for decreasing the above value",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              hoverColor: Colors.black,
              tooltip: ("Press for increase the number"),
              child: Icon(
                CupertinoIcons.add_circled,
                color: Colors.red,
                size: 50,
              ),
              onPressed: () {
                setState(() {
                  number = number + 1;
                });
              },
            ),
            SizedBox(width: 50),
            FloatingActionButton(
              backgroundColor: Colors.white,
              hoverColor: Colors.black,
              tooltip: ("Press for decrease the number"),
              child: Icon(
                Icons.remove_circle_outline_rounded,
                size: 50,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  number = number - 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
