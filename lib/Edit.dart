import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class EditPage extends StatefulWidget {
  final String id, name, description, imageURL;
  EditPage(this.id, this.name, this.description, this.imageURL);
  @override
  EditPageState createState() =>
      EditPageState(this.id, this.name, this.description, this.imageURL);
}

class EditPageState extends State<EditPage> {
  String id, name, description, imageURL;
  EditPageState(this.id, this.name, this.description, this.imageURL);

  alertEditProfile(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            title: Center(child: Text("Profile Change")),
            content: Text('Do you want to save your edits?',
                textAlign: TextAlign.center),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Profile(id, name, description, imageURL)));
                    });
                    //useProfile.changeData();
                  },
                  child: Text('Save'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          leading: Builder(
            builder: (BuildContext context) {
              return FlatButton(
                onPressed: () {
                  //do something
                  Navigator.pop(context);
                },
                child: Text("X",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              );
            },
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.done_rounded,
                color: Colors.blue,
              ),
              onPressed: () {
                alertEditProfile(context);
              },
            )
          ],
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('id',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey)),
            )
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextField(
                onChanged: (idValue) {
                  setState(() {
                    this.id = idValue;
                  });
                },
              )),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey)),
            )
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextField(
                onChanged: (nameValue) {
                  name = nameValue;
                },
              )),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('Descriptions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey)),
            )
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextField(
                onChanged: (desValue) {
                  setState(() {
                    description = desValue;
                  });
                },
              )),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('Photo URL',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey)),
            )
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextField(onChanged: (imageValue) {
                setState(() {
                  imageURL = imageValue;
                });
              })),
          Row(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, top: 12.0, right: 12.0),
              child: Text(
                  'Provide your personal information, event if the accounts is used for business, a',
                  maxLines: 20,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: Colors.grey)),
            ),
          ]),
          Row(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, top: 12.0, right: 12.0),
              child: Text(
                  'Pet or something else. This won`t be a part of your public profile',
                  maxLines: 20,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: Colors.grey)),
            )
          ])
        ]));
  }
}
