import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lab_final/Calculator.dart';
import 'package:lab_final/Profile.dart';
import 'package:lab_final/Quiz.dart';
import 'package:lab_final/weather/pages/weather_home.dart';

String profileImage = "https://i.ibb.co/fXGsdtZ/FB-IMG-1658779122912.jpg";
const Color mainColor = Color(0xFF006064);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color secondColor = Color.fromARGB(255, 93, 250, 255);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: mainColor,
    ));
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color.fromARGB(255, 8, 135, 116),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  MyAlertBox(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: const Text("Alert!!"),
                content: const Text("Do you want to Delete"),
                actions: [
                  TextButton(
                      onPressed: () {
                        showToast("Delete Success");
                        Navigator.of(context).pop();
                      },
                      child: const Text("Yes")),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("No"))
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Lab Final"),
          backgroundColor: const Color(0xFF006064),
          elevation: 10,
          toolbarHeight: 50,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: mainColor),
                  accountName: const Text("Hasan Mahamud"),
                  accountEmail: const Text("hasan15-2866@diu.edu.bd"),
                  currentAccountPicture: Image.network(profileImage),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.calculate),
                title: const Text("Calculator"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Calculator(),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.sunny_snowing),
                title: const Text("Weather Apps"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherHomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.quiz),
                title: const Text("Quiz"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Quiz(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
