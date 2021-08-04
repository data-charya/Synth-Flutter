import 'package:flutter/material.dart';
import 'package:synth/synth.dart';

void main() {
  runApp(const Synth());
}

class Synth extends StatelessWidget {
  const Synth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Synth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: primarySynthBlack,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'synth',
                    style: TextStyle(
                      fontSize: 65,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                      color: primarySynthCopper400,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SynthSoftbutton(
                      text: 'Agree & continue',
                      width: 200,
                      height: 60,
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SynthDrawablebutton(
                          text: 'Idle',
                          width: 180,
                          height: 80,
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SynthFlatbutton(
                      text: 'Idle',
                      width: 180,
                      height: 80,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SynthFlatDrawablebutton(
                        text: 'Idle',
                        width: 180,
                        height: 80,
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: primarySynthWhite100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NeuImgbutton(
                      radius: 80,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ),
                    NeuImgbutton(
                      radius: 80,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedView(
                      width: 300,
                      height: 100,
                      child: Center(
                        child: Text(
                          'synth',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w900,
                            color: primarySynthCopper400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SynthCircularcheckbox(
                      width: 30,
                      height: 30,
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SynthRoundedRectcheckbox(
                        width: 30,
                        height: 30,
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
