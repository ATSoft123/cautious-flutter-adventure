import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/picc.jpg'),
              ),
              Text(
                'David Damilola',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Pacifico",
                    fontWeight: FontWeight.w800),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 20,
                fontFamily: 'SourceSans'),
              ),
              SizedBox( height: 5, width: 270,
                child:  Divider( height: 10, color: Colors.white, ), 
               
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Phone number',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Email',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
