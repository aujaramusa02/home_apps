import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login Screen'),
      ),
      body: Center(
        child: Column(
          children: [

            Padding(padding: EdgeInsets.all(40)),
            const SizedBox(
              width: 250,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
              ),
            ),
            const SizedBox(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(40)),
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
                    child: Text('Login'))),
            SizedBox(
                width: 280,
                child: OutlinedButton(
                    onPressed: () {
                      debugPrint('I am working');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('Register'))),
            SizedBox(
                width: 280,
                child: TextButton(
                    onPressed: () {
                      debugPrint('I am working');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('Skip'))),

          ],
        ),
      ),
    );
  }
}
