import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avatar Page",
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "F",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Icon(Icons.search,),
          Icon(Icons.more_vert,),

        ],
      ),
    );
  }
}
