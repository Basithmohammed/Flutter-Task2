import 'package:flutter/material.dart';
import 'package:flutter_project_2/page1.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
        // leading: IconButton(
        //   iconSize: 30,
        //   color: Colors.white,
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.account_balance_rounded,
        //   ),
        // ),

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
                    return Page1();
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children:
                            
               List.generate(  
                20,
                (index) =>
                  ListTile( // repeated list-tiles 
                    textColor: Colors.white,
                    tileColor: Colors.black,
                    title: Text("Basith ${index+1}"),
                    subtitle:const Text("You have a message"),
                    leading:const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/menicon.png",
                      ),
                    ),
                    trailing: Text("07:15 am"),
              ),
              
              
              ),
            ),
          ),
        ),
      ),
    );
  }
}
