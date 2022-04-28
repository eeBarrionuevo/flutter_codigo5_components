import 'package:flutter/material.dart';

class Practice1Page extends StatelessWidget {
  const Practice1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 260.0,
              // color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0,),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Icon(Icons.wifi,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Connections"),
                      Text("Wi-fi Bluetooth Flight mode"),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
