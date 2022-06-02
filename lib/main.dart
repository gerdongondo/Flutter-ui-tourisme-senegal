import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tourisme Senegal"),
          backgroundColor: Colors.cyan[400],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.tour,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            imageSection,
            titleSection,
            textSection,
            iconSection,
            tourSection,
            buttonSection
          ],
        )),
      ),
    );
  }
}

Widget tourSection = Container(
  padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
  child: Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset('assets/images/renaissance.jpg'),
      ),
    ],
  ),
);

Widget bluebox = Container(
  height: 100,
  width: 100,
  color: Colors.yellow,
  child: const Center(
    child: Text("Hello World",
        textAlign: TextAlign.center, style: TextStyle(color: Colors.blue)),
  ),
);

Widget imageSection = Image.asset('assets/images/ile_gore.jpg');

Widget titleSection = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('Bienvenue au Senegal,',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
          const Text('Pays de la Teranga',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
        ],
      )
    ],
  ),
);

Widget textSection = Container(
    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
    child: const Text(
      ''' Le Sénégal est un pays situé sur la côte ouest de l'Afrique et doté d'un héritage colonial français et de nombreuses attractions naturelles.''',
      softWrap: true,
    ));

Widget iconSection = Container(
  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
  //color:Colors.blue,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        // color:Colors.yellow,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.airplanemode_active,
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'vol'.toUpperCase(),
              style: const TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      Container(
        // color:Colors.yellow,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.drive_eta,
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'car'.toUpperCase(),
              style: const TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget buttonSection = RaisedButton(
  onPressed: () {},
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  color: Colors.cyan,
  textColor: Colors.white,
  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
  child: const Text(
    'Autres lieux à visiter',
    style: TextStyle(fontSize: 20),
  ),
);
