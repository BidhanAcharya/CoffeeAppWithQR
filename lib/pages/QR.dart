import 'package:flutter/material.dart';
class QRPage extends StatefulWidget {
  const QRPage({super.key});

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Pay via QR'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body:
      Center(
        child: Container(
          height: 300,
            width: 300,
            child: Image(image: AssetImage('assets/ime.jpg'),)),
      ),
    );
  }
}
