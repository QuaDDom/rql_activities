import 'package:flutter/material.dart';
import 'package:rql_activities/src/pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activities',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.chat)
              ),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.logout, color: Colors.red)
              )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }
              );
            }
          ),
          title: const Text('USUARIO'),
        ),
        body: const Center(
          child: HomePage()
        ),
      ),
    );
  }
}