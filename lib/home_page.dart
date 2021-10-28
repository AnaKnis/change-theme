import 'package:flutter/material.dart';
import 'package:theme/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          CustomSwitch()
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $counter",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}

