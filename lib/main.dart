import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nouman/Hardlevel.dart';
import 'package:nouman/HomePage.dart';
import 'package:contactus/contactus.dart';
import 'dart:io';
// import 'package:quizzler/retry.dart';
// import 'quiz_brain.dart';
import 'dart:ui';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => QuizApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.cyan,
        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'images/dice.jpg'),
                height:300),
            Text("Muhammad Nouman Tahir",style:TextStyle(fontSize: 25)),
            Text("Sp-17 BCS 046",style:TextStyle(fontSize: 25)),
            SizedBox(height: 10,),
            CircularProgressIndicator()
          ],
        )
    );
  }
}
class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen, // status bar color
            brightness: Brightness.dark,
            title: Text('Dice Game',
              style: TextStyle(
                color: Colors.red,

              ),),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {exit(0);},
                    child: Icon(
                      Icons.close,
                      size: 26.0,
                    ),
                  )
              ),

            ],
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.yellow,
              tabs: [
                Tab(text: "Game"),
                Tab(text: "Contact Us"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: ()  {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => hardlevel()));
                      },
                      textColor: Colors.black,
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.red,
                              Colors.redAccent,
                              Colors.deepOrange,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Hard Level', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    SizedBox(height: 5,),
                    // SizedBox(height: 2,),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      textColor: Colors.black,
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.red,
                              Colors.redAccent,
                              Colors.deepOrange,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Simple Level', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],),
              ),
          Column(
            children: [
              ContactUs(
                logo: AssetImage('images/dice.jpg'),
                email: 'm.naumantahir8@gmail.com',
                companyName: 'Muhammad Nouman Tahir',
                phoneNumber: '',
                githubUserName: '',
                tagLine: 'Game Developer',
              ),
            ],
          )
              // Text('Muhammad Nouman Tahir (Sp-17 BCS 046)',style: TextStyle(
              //   color: Colors.red,fontSize: 25
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}