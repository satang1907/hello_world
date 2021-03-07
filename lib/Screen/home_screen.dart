import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/example_screen.dart';
import 'package:flutter_application_1/Screen/form_screen.dart';
import 'package:flutter_application_1/Screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Hello Drawer"),
        ),
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(color: Colors.red, child: Text("aaaaaaaaaaaaaaaaa")),
              Container(
                width: 150,
                height: 150,
                color: Color(0xFF00ff00),
                child: Image.asset('assets/images/cat.jpg'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("กดปุ่มนี้ดู"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                  );
                },
                child: Text("This is form screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExampleScreen(),
                    ),
                  );
                },
                child: Text("ExampleScreen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
