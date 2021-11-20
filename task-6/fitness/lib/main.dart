

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: intro(),
    ); 
  }
}

class intro extends StatelessWidget {

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("resources/page1.png"),
        title: "YOGA SURGE",
        body: "Welcome to the yoga World",
        footer: const Text("Inhale the future, exhale the past")
      ),
      PageViewModel(
        image: Image.asset("resources/page2.png"),
        title: "Healthy Freaks Excercises",
        body: "Letting go is the hardest asana",
      ),
      PageViewModel(
        image: Image.asset("resources/page3.png"),
        title: "Cycling",
        body: "You cannot always control what goes on outside, But you can always control what goes on inside",
      ),
      PageViewModel(
        image: Image.asset("resources/page4.png"),
        title: "Meditation",
        body: "The longest journey of any person is the journey inward.",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: const Text("Get started"),
        doneColor: Colors.black,
        onDone: (){
          Navigator.of(context)
          .push(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            )
          );
        },
        showNextButton: false,
        showSkipButton: true,
        skip: const Text("Skip"),
        skipColor: Colors.black,
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.black,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)
            )
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.transparent,
        ),
      body: Center (child: Column(
        children: [
          Image(image: AssetImage("resources/welcome.png")),
          Text(
            "Aashray Katiyar",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text("I am from Nepal, currently enrolled in CSI AIE A batch. My roll number is 85")
        ],
      ),)
    );
  }
}