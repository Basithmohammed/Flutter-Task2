import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  List<String> names = [
    "Arun",
    "anandh",
    "Meera",
    "Kiran",
    "sooraj",
    "karthik"
  ];
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.orange,
    Colors.black,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            names.length,
            (index) => cardElements(
              name: names[index],
              color: colors[index],
            ),
          ),
        ),
      ),
    );
  }
}

class cardElements extends StatelessWidget {
  String name;
  Color color;
  cardElements({required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        tileColor: color,
        title: Text(
          style:const TextStyle(          
            color: Colors.white,          
          ),
          name,
        ),
        subtitle:const Text(
          style:const TextStyle(
            
            color: Colors.white,
            
          ),
          "Subtitile data",
          ),
        leading: CircleAvatar(
          child: Text(name[0].toUpperCase()),
          backgroundColor: const Color.fromARGB(255, 206, 205, 194),
        ),
        trailing:const Icon(
          Icons.access_alarm,
        ),
      ),
    );
  }
}
