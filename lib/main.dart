import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> mycolor = [Colors.orange, Colors.blueGrey, Colors.brown];
  List<Color> mydeflultcolor = [Colors.blue, Colors.white12];
  bool myCheckbox = false;

  bool myCheckboxone = false;
  bool myCheckboxonetwo = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Text(
              "enter your cantry",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: mycolor),
              ),
              child: CheckboxListTile(
                secondary: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.IshStqXynXGh5_3GFOoICQHaFj?w=216&h=180&c=7&r=0&o=5&pid=1.7")),
                checkColor: Colors.redAccent,
                subtitle: Text("amman",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 2, 95), fontSize: 25)),
                title: Text(
                  "jorden",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                value: myCheckbox,
                onChanged: (value) {
                  setState(() {
                    myCheckbox = value!;
                  });
                },
              ),
            ),
            Divider(
              height: 20,
              thickness: 15,
              color: Colors.cyanAccent,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: mycolor),
              ),
              child: CheckboxListTile(
                secondary: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.5gaTuN7P2p9IqAKcl2pgrgHaE8?w=256&h=180&c=7&r=0&o=5&pid=1.7")),
                checkColor: Colors.redAccent,
                subtitle: Text("damascus",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 2, 95), fontSize: 25)),
                title: Text(
                  "syria",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                value: myCheckboxone,
                onChanged: (value) {
                  setState(() {
                    myCheckboxone = value!;
                  });
                },
              ),
            ),
            Divider(
              height: 20,
              thickness: 15,
              color: Color.fromARGB(255, 0, 66, 66),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: mycolor),
              ),
              child: CheckboxListTile(
                secondary: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.kEBN7KppqYhigMgZj9mOUgHaEw?w=253&h=180&c=7&r=0&o=5&pid=1.7")),
                checkColor: Colors.redAccent,
                subtitle: Text("Riyadh",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 2, 95), fontSize: 25)),
                title: Text(
                  "saudi arabia",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                value: myCheckboxonetwo,
                onChanged: (value) {
                  setState(() {
                    myCheckboxonetwo = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
