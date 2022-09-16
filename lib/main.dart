// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Material"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Center(child: Text("WARNING", style: TextStyle(color: Colors.red),)),
                    content: const Text("Are you sure want to delete this data?"),
                    actions: <Widget>[
                      FlatButton(
                        child: const Icon(Icons.close, color: Colors.red,),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Icon(Icons.done, color: Colors.green,),
                        onPressed: () {},
                      )
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: <Widget>[
                      const ListTile(
                        title: Center(child: Text("Hobbies")),
                        subtitle: Center(
                          child: Text("Select your hobbie"),
                        ),
                      ),
                      ListTile(
                        title: const Text("Coding"),
                        leading: const Icon(Icons.code),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("Main Game"),
                        leading: const Icon(Icons.games),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("Menulis"),
                        leading: const Icon(Icons.text_format),
                        onTap: () {},
                      ),
                    ],
                  );
                });
          },
          child: const Text("Tap me"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
