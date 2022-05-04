import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> superheroes = [
    "Superman",
    "Batman",
    "Wonder Woman",
    "Flash",
    "Aquaman",
  ];

  Map<String, dynamic> teamMap = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      }
    ]
  };

  void showDetailSuperhero(Map<String, dynamic> hero) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(hero["image"]),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                hero["name"],
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontSize: 18.0,
                ),
              ),
              ListTile(
                title: Text(hero["age"].toString()),
                subtitle: Text("Superhero age"),
              ),
              ListTile(
                title: Text(hero["secretIdentity"]),
                subtitle: Text("Secret Identity"),
              ),
              ...hero["powers"].map<Widget>((e)=> Text(e)).toList()
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("ListPage"),
        centerTitle: true,
      ),
      // body: ListView.builder(
      //   itemCount: superheroes.length,
      //   itemBuilder: (BuildContext context, int index){
      //     return ListTile(
      //       title: Text(superheroes[index]),
      //       subtitle: const Text("Nombre"),
      //       trailing: IconButton(
      //         icon: Icon(Icons.delete),
      //         onPressed: (){
      //           superheroes.removeAt(index);
      //           setState(() {
      //
      //           });
      //         },
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        itemCount: teamMap["members"].length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(teamMap["members"][index]["image"]),
            ),
            title: Text(teamMap["members"][index]["name"]),
            subtitle: Text(teamMap["squadName"]),
            trailing: IconButton(
              icon: Icon(Icons.remove_red_eye_sharp),
              onPressed: () {
                // print(teamMap["members"][index]);
                showDetailSuperhero(teamMap["members"][index]);
              },
            ),
          );
        },
      ),
    );
  }
}
