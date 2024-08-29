import 'package:flutter/material.dart';
import 'package:flutter_project_2/home.dart';
import 'package:flutter_project_2/page3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Whatsapp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          iconSize: 20,
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Homepage();
                  },
                ),
              );
          },
          icon: const Icon(
            Icons.backspace_outlined,
          ),
        ),

        actions: [
          IconButton(
            iconSize: 26,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner_outlined,
            ),
          ),
          IconButton(
            iconSize: 26,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            iconSize: 26,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Page3();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.forward,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (ctx, index) => Column(
            children: [
              
              ListTile(
                textColor: Colors.white,
                tileColor: Colors.black,
                title: Text("Person ${index + 1}"),
                subtitle: Text("You have a message"),
                trailing: Text("02:30 pm"),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/menicon.png",
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
