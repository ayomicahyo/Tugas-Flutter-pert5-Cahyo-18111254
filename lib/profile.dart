import 'package:flutter/material.dart';
import 'Edit.dart';

class Profile extends StatefulWidget {
  final String id, name, description, imageURL;
  Profile(this.id, this.name, this.description, this.imageURL);
  @override
  ProfileState createState() =>
      ProfileState(this.id, this.name, this.description, this.imageURL);
}

class ProfileState extends State<Profile> {
  final String id, name, description, imageURL;
  ProfileState(this.id, this.name, this.description, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {
                  //do something
                },
              );
            },
          ),
          title: Text(
            id,
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                //do something
              },
            )
          ],
        ),
        body: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('See Covid-19 Business Resources',
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.center)),
          Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                    radius: 50,
                  )),
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: <Widget>[
                        Text('0'),
                        Text('Posts',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: <Widget>[
                        Text('124'),
                        Text('Followers',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: <Widget>[
                        Text('126'),
                        Text('Following',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                ],
              ),
            ],
          ),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            )
          ]),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(description),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EditPage(id, name, description, imageURL)));
                  },
                  child: Text('Edit Profile',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('Promotions',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('Insights',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ))
          ])
        ]));
  }
}

/*class MainData {
  //static var id = ' Your ID ';
  static var name = 'Your Name';
  static var description = 'Your Description';
  static var webImage = 'https://www.woolha.com/media/2020/03/eevee.png';
}*/
