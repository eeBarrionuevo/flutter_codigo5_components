import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {


  void showMyAlert(BuildContext matasquita) {
    showDialog(
      context: matasquita,
      builder: (BuildContext federico){
        return Text("Hola");
      },
    );
  }

  @override
  Widget build(BuildContext mandarina) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Alert Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(mandarina);
              },
              child: Text(
                "Show Alert",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
