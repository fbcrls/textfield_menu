import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter TextField'),
        ),
        body: myBody(),
      ),
    );
  }
}

class myBody extends StatefulWidget {
  @override
  State<myBody> createState() => _myBodyState();
}

class _myBodyState extends State<myBody> {
  //variable
  //controller to store data
  //text to receive input from textfield
  final TextEditingController controller = TextEditingController();
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //textfield with controller
          TextField(
            decoration: InputDecoration(
              labelText: 'Insert your name here',
              border: OutlineInputBorder(),
            ),
            controller: controller,
          ),
          SizedBox(height: 10),
          //button to store data
          Container(
            height: 50,
            color: Colors.blue,
            child: TextButton(
              onPressed: () {
                setState(() {
                  text = controller.text;
                });
              },
              child: Container(
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          //display data
          Container(
            child: Text('$text'),
          )
        ],
      ),
    );
  }
}
