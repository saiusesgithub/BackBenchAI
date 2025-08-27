import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 11, 15),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 25, 25),
        title: Text(
          'BackBench AI',
          style: TextStyle(
            color: Color.fromARGB(255, 124, 92, 255),
            fontFamily: 'EduCursive',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(),
      floatingActionButton: _uploadFileButton(),
    );
  }

  Widget _uploadFileButton() {
    return FloatingActionButton.extended(
      onPressed: () {},
      isExtended: true,
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      foregroundColor: Color.fromARGB(255, 124, 92, 255),
      icon: Icon(Icons.add),
      label: Text('Upload File', style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}
