import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: DecorationImage(
                    // image: NetworkImage("https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",),
                    image: NetworkImage(
                      "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: Offset(4, 4),
                      blurRadius: 12.0,
                    ),
                  ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Flutter Components",
              style: GoogleFonts.montserrat(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
