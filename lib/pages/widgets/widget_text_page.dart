import 'package:flutter/material.dart';

class WidgetTextPage extends StatefulWidget {
  const WidgetTextPage({super.key});

  @override
  State<WidgetTextPage> createState() => _WidgetTextPageState();
}

class _WidgetTextPageState extends State<WidgetTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget: Text')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Title
            Text('Title'),
          ],
        ),
      )),
    );
  }
}
