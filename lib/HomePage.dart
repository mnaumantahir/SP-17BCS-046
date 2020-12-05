import 'package:flutter/material.dart';
import 'dart:math';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage diceimage_right;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage_right= one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random_right = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage_right;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (random_right) {
      case 1:
        newImage_right = one;
        break;
      case 2:
        newImage_right = two;
        break;
      case 3:
        newImage_right = three;
        break;
      case 4:
        newImage_right = four;
        break;
      case 5:
        newImage_right = five;
        break;
      case 6:
        newImage_right = six;
        break;
    }
    setState(() {
      diceimage = newImage;
      diceimage_right = newImage_right;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: diceimage,
                    width: 170.0,
                    height: 200.0,
                  ),
                  SizedBox(width: 20,),
                  Image(
                    image: diceimage_right,
                    width: 170.0,
                    height: 200.0,
                  ),
                ],),

              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.deepOrange,
                  padding: EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 25.0),
                  child: Text(
                    'Roll the dice!',
                  ),
                  onPressed: rollDice,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
