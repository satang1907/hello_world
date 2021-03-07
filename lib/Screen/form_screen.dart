import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("This is form screen"),
        ),
        body: Center(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "ชื่อ-สกุล"),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "อีเมลล์"),
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
                  child: Text("กดปุ่มนี้ดู"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
