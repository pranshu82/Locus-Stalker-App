import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  static const String id = 'about_screen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 10.0),
            Text(
              'About App',
              style: TextStyle(
                color: Colors.teal.shade300,
                fontSize: 40.0,
                //     decoration: TextDecoration.underline),
                // textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Locus Stalker is a live location tracker app made for knowing locations of your group of friends in real time.User can easily stalk any of his friends\' location. User can easily create, leave and manage groups by adding removing members. It gives user the freedom to share his location to the groups of his choice. It uses Firebase for database and uses email authentication or google sign in to register. Users can easily update their userinfo such as username, email and password. It allows user to set profilepic from gallarey or camera.',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 50.0),
            Text('Contact Us',
                style: TextStyle(
                  color: Colors.teal.shade300,
                  fontSize: 40.0,
                )),
            SizedBox(
              height: 6,
            ),
            Text(
              'Pranshu Pandya',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'https://www.linkedin.com/in/pranshu-pandya-9586b8200/',
              style: TextStyle(fontSize: 15),
            ),
            // Text('Linkdin: '),
            SizedBox(
              height: 15,
            ),
            Text(
              'Pranshu Kandoi',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'https://www.linkedin.com/in/pranshu-kandoi-833a51200/',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}