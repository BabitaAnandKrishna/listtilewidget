import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile Widget"),
      ),
      body: Column(
        children: [
            ListTile(
              title: Text("Tech Power Girls"),
              subtitle: Text("Technically Strong \n and Independent Women"),
              isThreeLine: true,
              dense: false,
              enabled: true,
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/techpoergirlslogo_new.png"),

              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              contentPadding: EdgeInsets.all(20),
              selected: true,
              onLongPress: (){
                print("On long press in fierd");
              },
              onTap: (){
                print("On tap is fired");
              },
            )
        ],
      ),
    );
  }
}
