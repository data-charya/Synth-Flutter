library synth;

import 'package:flutter/material.dart';

//Softbutton Component
class SynthSoftbutton extends StatelessWidget {
  SynthSoftbutton({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final double width;
  final double height;
  final GestureTapCallback onPressed;

  final isPressed = ValueNotifier<bool>(false);

  void change() {
    if (isPressed.value) {
      isPressed.value = false;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = true;
      });
    } else {
      isPressed.value = true;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => [onPressed, change()],
        onLongPress: () => change(),
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              gradient: isPressed.value == true
                  ? LinearGradient(colors: [
                      primarySynthBlack400,
                      primarySynthBlack,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                  : LinearGradient(
                      colors: [
                        primarySynthBlack.withOpacity(0.4),
                        primarySynthBlack200
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      stops: const [0.95, 1],
                    ),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: primarySynthBlack.withOpacity(0.22),
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: primarySynthWhite.withOpacity(0.2),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 10, //extend the shadow
                  offset: const Offset(
                    -3.0, // Move to right 10  horizontally
                    -3.0, // Move to bottom 10 Vertically
                  ),
                ),
                BoxShadow(
                  color: primaryBlack.withOpacity(0.43),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 5, //extend the shadow
                  offset: const Offset(
                    5.0, // Move to right 10  horizontally
                    12.0, // Move to bottom 10 Vertically
                  ),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                  color: isPressed.value
                      ? primarySynthCopper40
                      : primarySynthCopper400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//DrawableButton Component
class SynthDrawablebutton extends StatelessWidget {
  SynthDrawablebutton({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final double width;
  final double height;

  final GestureTapCallback onPressed;
  final isPressed = ValueNotifier<bool>(false);

  void change() {
    if (isPressed.value) {
      isPressed.value = false;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = true;
      });
    } else {
      isPressed.value = true;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var radius = 0.7 * height;
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => [onPressed, change()],
        onLongPress: () => change(),
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
            //curve: Curves.easeInOutQuint,
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              gradient: isPressed.value
                  ? LinearGradient(
                      colors: [
                        primarySynthBlack400,
                        primarySynthBlack,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    )
                  : LinearGradient(colors: [
                      primarySynthBlack.withOpacity(0.3),
                      primarySynthBlack200,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(100),
              border: isPressed.value
                  ? Border.all(
                      color: primarySynthBlack.withOpacity(0.05), width: 4)
                  : Border.all(
                      color: primarySynthBlack.withOpacity(0.22), width: 4),
              boxShadow: [
                BoxShadow(
                  color: primarySynthWhite.withOpacity(0.2),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 10, //extend the shadow
                  offset: const Offset(
                    -3.0, // Move to right 10  horizontally
                    -3.0, // Move to bottom 10 Vertically
                  ),
                ),
                BoxShadow(
                  color: primaryBlack.withOpacity(0.4),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 10, //extend the shadow
                  offset: const Offset(
                    6.0, // Move to right 10  horizontally
                    10.0, // Move to bottom 10 Vertically
                  ),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: radius,
                      height: radius,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3, color: primaryBlack.withOpacity(0.04)),
                          gradient: isPressed.value
                              ? LinearGradient(
                                  colors: [
                                      primaryBlack.withAlpha(40),
                                      primarySynthBlack,
                                    ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)
                              : LinearGradient(
                                  colors: [
                                      primarySynthBlack400.withOpacity(0.8),
                                      //primarySynthBlack400.withOpacity(0.7),
                                      primarySynthBlack
                                    ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(radius),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 0.50 * radius,
                          color: primarySynthCopper40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w400,
                          color: isPressed.value
                              ? primarySynthCopper40
                              : primarySynthCopper400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//FlatButton Component
class SynthFlatbutton extends StatelessWidget {
  SynthFlatbutton(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.icon})
      : super(key: key);
  final String text;
  final double width;
  final double height;
  final Icon icon;
  final GestureTapCallback onPressed;
  final isPressed = ValueNotifier<bool>(false);
  void change() {
    if (isPressed.value) {
      isPressed.value = false;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = true;
      });
    } else {
      isPressed.value = true;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => [onPressed, change()],
        onLongPress: () => change(),
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              gradient: isPressed.value
                  ? primarySynthBlueDarkGradient
                  : primarySynthBlueGradient,
              borderRadius: BorderRadius.circular(100),
              border: isPressed.value
                  ? Border.all(color: primarySynthBlack, width: 4)
                  : Border.all(color: primarySynthBlack, width: 4),
              boxShadow: [
                BoxShadow(
                  color: primarySynthWhite.withOpacity(0.2),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 6, //extend the shadow
                  offset: const Offset(
                    -8.0, // Move to right 10  horizontally
                    -6.0, // Move to bottom 10 Vertically
                  ),
                ),
                BoxShadow(
                  color: primaryBlack.withOpacity(0.4),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 10, //extend the shadow
                  offset: const Offset(
                    5.0, // Move to right 10  horizontally
                    12.0, // Move to bottom 10 Vertically
                  ),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                    color: isPressed.value
                        ? primarySynthWhite
                        : primarySynthWhite100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//FlatDrawableButton Component
class SynthFlatDrawablebutton extends StatelessWidget {
  SynthFlatDrawablebutton(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.icon})
      : super(key: key);
  final String text;
  final double width;
  final double height;
  final Icon icon;
  final GestureTapCallback onPressed;
  final isPressed = ValueNotifier<bool>(false);
  void change() {
    if (isPressed.value) {
      isPressed.value = false;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = true;
      });
    } else {
      isPressed.value = true;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var radius = 0.7 * height;
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => [onPressed, change()],
        onLongPress: () => change(),
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              gradient: isPressed.value
                  ? primarySynthBlueDarkGradient
                  : primarySynthBlueGradient,
              borderRadius: BorderRadius.circular(100),
              border: isPressed.value
                  ? Border.all(color: primarySynthBlack, width: 4)
                  : Border.all(color: primarySynthBlack, width: 4),
              boxShadow: [
                BoxShadow(
                  color: primarySynthWhite.withOpacity(0.2),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 6, //extend the shadow
                  offset: const Offset(
                    -8.0, // Move to right 10  horizontally
                    -6.0, // Move to bottom 10 Vertically
                  ),
                ),
                BoxShadow(
                  color: primaryBlack.withOpacity(0.4),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 10, //extend the shadow
                  offset: const Offset(
                    5.0, // Move to right 10  horizontally
                    12.0, // Move to bottom 10 Vertically
                  ),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: radius,
                      height: radius,
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: primaryBlack.withOpacity(0.04)),
                            gradient: isPressed.value
                                ? LinearGradient(
                                    colors: [
                                        primarySynthBlue800,
                                        primarySynthBlue400,
                                      ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight)
                                : const LinearGradient(
                                    colors: [
                                        Color(0xff26458C),
                                        Color(0xff426BB6),
                                      ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(radius),
                          ),
                          child: icon),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w400,
                          color: isPressed.value
                              ? primarySynthWhite
                              : primarySynthWhite100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//ImgButton Component
class NeuImgbutton extends StatelessWidget {
  NeuImgbutton({
    Key? key,
    required this.icon,
    required this.radius,
    required this.onPressed,
  }) : super(key: key);
  final Icon icon;
  final double radius;
  final GestureTapCallback onPressed;

  final isPressed = ValueNotifier<bool>(false);

  void change() {
    if (isPressed.value) {
      isPressed.value = false;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = true;
      });
    } else {
      isPressed.value = true;
      Future.delayed(const Duration(milliseconds: 400), () {
        isPressed.value = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius,
      height: radius,
      child: Center(
        child: GestureDetector(
          onTap: () => [onPressed, change()],
          child: ValueListenableBuilder(
            valueListenable: isPressed,
            builder: (context, value, widget) => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: primarySynthWhite.withOpacity(0.2),
                    blurRadius: 20.0, // soften the shadow
                    spreadRadius: 5, //extend the shadow
                    offset: const Offset(
                      -5.0, // Move to right 10  horizontally
                      -10.0, // Move to bottom 10 Vertically
                    ),
                  ),
                  BoxShadow(
                    color: primaryBlack.withOpacity(0.3),
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 5, //extend the shadow
                    offset: const Offset(
                      7.0, // Move to right 10  horizontally
                      10.0, // Move to bottom 10 Vertically
                    ),
                  ),
                ],
                border: Border.all(
                    width: 3, color: primarySynthBlack.withOpacity(0.2)),
                gradient: isPressed.value
                    ? LinearGradient(
                        colors: [
                          primarySynthBlack200,
                          primaryBlack,
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      )
                    : LinearGradient(
                        colors: [
                          primarySynthBlack.withOpacity(0.4),
                          primarySynthBlack200
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Center(child: icon),
            ),
          ),
        ),
      ),
    );
  }
}

//ElevatedView Component
class ElevatedView extends StatelessWidget {
  const ElevatedView({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);
  final double width;
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primarySynthBlack,
            border: Border.all(
                color: primarySynthBlack200.withOpacity(0.22), width: 3),
            boxShadow: [
              BoxShadow(
                color: primarySynthWhite.withOpacity(0.2),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2, //extend the shadow
                offset: const Offset(
                  -4.0, // Move to right 10  horizontally
                  -7.0, // Move to bottom 10 Vertically
                ),
              ),
              BoxShadow(
                color: primaryBlack.withOpacity(0.4),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2, //extend the shadow
                offset: const Offset(
                  10.0, // Move to right 10  horizontally
                  7.0, // Move to bottom 10 Vertically
                ),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}

//CircularCheckBox Component
class SynthCircularcheckbox extends StatelessWidget {
  SynthCircularcheckbox({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);
  final double width;
  final double height;
  final GestureTapCallback onPressed;

  final isPressed = ValueNotifier<bool>(false);

  void change() {
    if (isPressed.value) {
      isPressed.value = false;
    } else {
      isPressed.value = true;
    }
  }

  //isPressed.value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => [onPressed, change()],
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutCirc,
              decoration: BoxDecoration(
                color: isPressed.value == true
                    ? primarySynthCopper400
                    : primarySynthBlack,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: primarySynthCopper400, width: 3),
              ),
              child: isPressed.value
                  ? const Center(
                      child: Icon(
                      Icons.done,
                    ))
                  : const Center()),
        ),
      ),
    );
  }
}

//RoundedRectCheckBox Component
class SynthRoundedRectcheckbox extends StatelessWidget {
  SynthRoundedRectcheckbox({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);
  final double width;
  final double height;
  final GestureTapCallback onPressed;

  final isPressed = ValueNotifier<bool>(false);

  void change() {
    if (isPressed.value) {
      isPressed.value = false;
    } else {
      isPressed.value = true;
    }
  }

  //isPressed.value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () => [onPressed, change()],
        child: ValueListenableBuilder(
          valueListenable: isPressed,
          builder: (context, value, widget) => AnimatedContainer(
              curve: Curves.easeInCubic,
              duration: const Duration(milliseconds: 400),
              decoration: BoxDecoration(
                  color: primarySynthBlack,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primarySynthWhite400, width: 3)),
              child: isPressed.value
                  ? Icon(
                      Icons.done,
                      color: primarySynthWhite100,
                    )
                  : const Center()),
        ),
      ),
    );
  }
}

//Primary
//Synth Black
Color primaryBlack = const Color(0xff000000);
Color primarySynthBlack = const Color(0xff212426);
Color primarySynthBlack200 = const Color(0xff1B1E20);
Color primarySynthBlack400 = const Color(0xff171818);

//Synth White
Color primarySynthWhite = const Color(0xff7C7D7F);
Color primarySynthWhite100 = const Color(0xffFFFFFF);
Color primarySynthWhite200 = const Color(0xffCFD0D0);
Color primarySynthWhite300 = const Color(0xff4B4E4F);
Color primarySynthWhite400 = const Color(0xff4B4E4F);
Color primarySynthWhite500 = const Color(0xff343739);
Color primarySynthWhite600 = const Color(0xff2A2D2F);

//Synth Copper
Color primarySynthCopper40 = const Color(0xff7A6B61);
Color primarySynthCopper400 = const Color(0xffF9D3B4);
Color primarySynthCopper600 = const Color(0xffD9896A);
Color primarySynthCopper800 = const Color(0xff945439);
LinearGradient primarySynthCopperHorizontalGradient = const LinearGradient(
    colors: [Color(0xff95553A), Color(0xffD78869)],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft);
LinearGradient primarySynthCopperVerticalGradient = const LinearGradient(
    colors: [Color(0xff96563A), Color(0xffD78869)],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter);

//Synth Blue
Color primarySynthBlue400 = const Color(0xff426BB6);
Color primarySynthBlue700 = const Color(0xff26458C);
Color primarySynthBlue800 = const Color(0xff1B2D5B);
Color primarySynthBlue900 = const Color(0xff18263E);

LinearGradient primarySynthBlueGradient = const LinearGradient(
  colors: [
    Color(0xff426BB6),
    Color(0xff26458C),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient primarySynthBlueDarkGradient = const LinearGradient(
  colors: [
    Color(0xff2C497F),
    Color(0xff2A4A92),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

//Secondary
//Synth Purple
Color secondarySynthPurple200 = const Color(0xffBB86FC);
Color secondarySynthPurple300 = const Color(0xff7A5A94);
Color secondarySynthPurple400 = const Color(0xff4C4266);
Color secondarySynthPurple500 = const Color(0xff6200EE);
Color secondarySynthPurple700 = const Color(0xff3700B3);

//Synth Teal
Color secondarySynthTeal200 = const Color(0xff018786);
Color secondarySynthTeal700 = const Color(0xff03DAC5);
