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
                          'https://auth.riotgames.com/login#acr_values=urn%3Ariot%3Agold&client_id=accountodactyl-prod&redirect_uri=https%3A%2F%2Faccount.riotgames.com%2Foauth2%2Flog-in&response_type=code&scope=openid%20email%20profile%20riot%3A%2F%2Friot.atlas%2Faccounts.edit%20riot%3A%2F%2Friot.atlas%2Faccounts%2Fpassword.edit%20riot%3A%2F%2Friot.atlas%2Faccounts%2Femail.edit%20riot%3A%2F%2Friot.atlas%2Faccounts.auth%20riot%3A%2F%2Fthird_party.revoke%20riot%3A%2F%2Fthird_party.query%20riot%3A%2F%2Fforgetme%2Fnotify.write%20riot%3A%2F%2Friot.authenticator%2Fauth.code&state=7510832e-9d11-4f41-88db-77990a1dd9bb');
                    },
                    icon: FaIcon(FontAwesomeIcons.gamepad),
                    color: Colors.white38,
                  ),
                  Text(
                    'Valorant : Void OG #On1',
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
