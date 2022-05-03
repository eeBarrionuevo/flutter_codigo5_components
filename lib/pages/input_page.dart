import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InpuPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                maxLength: 20,
                cursorColor: Colors.deepPurpleAccent,
                style: const TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: const Text("Correo electrónico"),
                  hintText: "Ingresa tu correo electrónico",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.35),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.alternate_email),
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 4.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 4.0,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.check_circle_outline),
                  label: Text("Buscar"),
                  hintText: "Ingresa el producto a buscar...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Buscar producto...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black.withOpacity(0.37),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pinkAccent.withOpacity(0.4),
                            offset: const Offset(4, 4),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Ingrese su contraseña",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: (){
                      print("sdsdsd");
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
