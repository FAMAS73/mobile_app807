import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Title Text'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            buttonAlert1(),
            SizedBox(height: 20),
            buttonAlert2(),
          ],
        ),
      ));

  Widget buttonAlert1() => TextButton(
        child: Text('Show Dialog'),
        onPressed: () => materialAlert(
          context,
          title: 'Material Dialog',
          content: 'This is a Material Dialog',
        ),
      );

  Widget buttonAlert2() => TextButton(
        child: Text('แจ้งเตือน'),
        onPressed: () => materialAlert(
          context,
          title: 'คำเตือน',
          content: 'แบตเตอรี่ต่ำ กรุณาชาร์จแบตเตอรี่',
        ),
      );

  void materialAlert(BuildContext context,
      {required String title, required String content}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancel')),
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ));
  }
}
