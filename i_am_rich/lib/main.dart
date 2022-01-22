import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //home ye Propertye MaterialApp has. in property ye widget mikhad ==> Scaffold ye widget has
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'I Am Rich',
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: /*Text('I Am Rich Bitch :)',style: TextStyle(fontSize: 30),)*/
              Image(
            image:
                //NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
                AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
