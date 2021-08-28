import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatelessWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('My ID Card'),
          centerTitle: true,
          backgroundColor: Colors.white12,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/aman.jpeg'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.white,
              ),
              Text(
                'NAME :',
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 20,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Amandeep Rajput',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'INSTITUTE :',
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 20,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Indian Institute Of Technology B.H.U',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  IconButton(
                    onPressed: () {
                      _launchURL('https://mail.google.com/mail/u/0/#inbox');
                    },
                    icon: Icon(Icons.email),
                    color: Colors.white38,
                  ),
                  SizedBox(
                    width: 0.0,
                  ),
                  Text(
                    'amandeep.rajput.cd.met20@gmail.com',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 19.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL('https://github.com/AVoid1');
                    },
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Colors.white38,
                  ),
                  Text(
                    'https://github.com/AVoid1',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 19.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL(
                          'https://www.facebook.com/profile.php?id=100015605461073');
                    },
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    color: Colors.white38,
                  ),
                  Text(
                    'Amandeep Rajput',
                    style: TextStyle(color: Colors.white38, fontSize: 19.0),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL(
                          'https://www.instagram.com/deep.aman_vo1d/?hl=en');
                    },
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    color: Colors.white38,
                  ),
                  Text(
                    'deep.aman_vo1d',
                    style: TextStyle(color: Colors.white38, fontSize: 19.0),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL(
                          'https://discord.gg/zthnM3EG');
                    },
                    icon: FaIcon(FontAwesomeIcons.discord),
                    color: Colors.white38,
                  ),
                  Text(
                    'Discord : Sasti_Masti',
                    style: TextStyle(color: Colors.white38, fontSize: 19.0),
                  )
                ],
              ),
              Divider(
                height: 30,
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
