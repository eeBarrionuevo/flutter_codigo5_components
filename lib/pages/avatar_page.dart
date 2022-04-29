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
        actions: const [
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
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.search,),
          Icon(Icons.more_vert,),

        ],
      ),
    );
  }
}
