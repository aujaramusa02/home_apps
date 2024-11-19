import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdatedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updated Screen'),
      ),
      body:ListView.builder (
        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
            onTap: () {
              print(index);
            },
            leading: CircleAvatar(
              child: Text('A'),

            ),
            title: Text('List item'),
            trailing: Checkbox(value: false, onChanged:(k){}),
          );
        }
      )   );
  }
}
