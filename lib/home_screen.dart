import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_apps/Screens/gallery_screen.dart';
import 'package:home_apps/Screens/saved_screen.dart';
import 'package:home_apps/Screens/social_screen.dart';
import 'package:home_apps/Screens/updates_screen.dart';

import 'Screens/login_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Deleted successfully!')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                width: 280,
                child: FilledButton(
                    onPressed: () {
                      debugPrint('I am working');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

                    },
                    child: Text('Login page'))),
            SizedBox(
                width: 280,
                child: FilledButton(onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GalleryScreen()),
                  );


                }, child: Text('Gallery'))),
            SizedBox(
                width: 280,
                child: FilledButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdatedScreen()),
                  );

                }, child: Text('Updates'))),
            SizedBox(
                width: 280,
                child: FilledButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SavedScreen()),
                  );

                }, child: Text('Saved'))),
            SizedBox(
                width: 280,
                child: FilledButton.tonal(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SocialScreeen()),
                  );

                }, child: Text('Social'))),
        const SizedBox(
          width: 250,
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.explore), label: 'explore'),
        NavigationDestination(icon: Icon(Icons.save), label: 'Saved'),
        NavigationDestination(icon: Icon(Icons.update), label: 'Updated'),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
