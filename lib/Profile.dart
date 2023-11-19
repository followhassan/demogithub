import 'package:flutter/material.dart';
import 'package:lab_final/main.dart';
import 'package:url_launcher/url_launcher.dart';

String profileImage = "https://i.ibb.co/fXGsdtZ/FB-IMG-1658779122912.jpg";

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF006064),
        elevation: 10,
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(profileImage),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hasan Mahamud ',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8),
            const Text(
              'hasan15-2866@diu.edu.bd',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 16),

            // Bio Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Welcome here, This is Hasan Mahamud. I am a native android developer.Currently I am start devoloping Android apps by using flutter. If you want to develop your Application Hire me. Here is my contact Info ',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                IconButton(
                  color: mainColor,
                  icon: Icon(Icons.email),
                  onPressed: () {},
                ),

                IconButton(
                  color: mainColor,
                  icon: Icon(Icons.facebook),
                  onPressed: () {},
                ),

                IconButton(
                  color: mainColor,
                  icon: Icon(Icons.youtube_searched_for),
                  onPressed: () {},
                ),

                IconButton(
                  color: mainColor,
                  icon: Icon(Icons.link),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Portfolio Section
            const Text(
              'Portfolio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Example Project 1


            // Example Project 2

          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
