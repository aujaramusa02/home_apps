import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
    length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: " Video",),
              Tab(text: " Photo",),
              Tab(text: " Audio",),
            ],
          ),
          title: Text('Gallery Screen'),
        ),
        body: ListView.builder (
          itemCount: 10,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: () {
                  print(index);
                },
                leading: CircleAvatar(
                  child: Text('A'),

                ),
                title: Text('Header'),
                subtitle: Text("Subhead"),
                trailing: Container(
                  width: 80,
                  height: 80,
                  color: Colors.grey,
                ),
              ),
            );
          }
      ) ,
      ),
    );
  }
}
