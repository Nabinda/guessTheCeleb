import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guesstheceleb/images_control.dart';
import 'package:guesstheceleb/option_control.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

ImageControl imageControl = new ImageControl();
OptionControl optionControl = new OptionControl();
int index = 0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Guess Who?"),
          elevation: 3,
        ),
        body: Guess(),
      ),
    );
  }
}

class Guess extends StatefulWidget {
  @override
  _GuessState createState() => _GuessState();
}

class _GuessState extends State<Guess> {
  int optionNumber;
  String image = imageControl.getImages(index);
  String text = imageControl.imageNumber().toString();
  String answer = imageControl.getResult(index);
  String optionText;
  void checkAnswer(String answer) {
    setState(() {
      if (!imageControl.isFinished()) {
        if (answer == imageControl.getResult(index)) {
          text = "CORRECT";
        } else
          text = "WRONG";
        index++;
        image = imageControl.getImages(index);
      } else {
        Alert(context: context, title: "Game Over", buttons: [
          DialogButton(
            child: Text("PLAY AGAIN"),
            onPressed: () {
              Navigator.pop(context);
              index = 0;
              image = imageControl.getImages(index);
            },
          ),
        ]);
      }
    });
  }

  Widget Option(String optionText) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: SizedBox(
        width: double.infinity,
        height: 30,
        child: FlatButton(
          color: Colors.grey,
          child: Text("$optionText"),
          onPressed: () {
            checkAnswer(optionText);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.asset(
            "assets/images/$image",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ),
        Column(
          children: <Widget>[
            Option(optionControl.getOption1(index)),
            Option(optionControl.getOption2(index)),
            Option(optionControl.getOption3(index)),
            Option(optionControl.getOption4(index)),
          ],
        ),
        Container(
          child: Text("$text"),
        )
      ],
    );
  }
}
