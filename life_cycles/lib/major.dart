import 'package:flutter/material.dart';
import 'iconGender.dart';
import 'myContainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class major extends StatefulWidget {
  @override
  _majorState createState() => _majorState();
}

// ignore: camel_case_types
class _majorState extends State<major> {
  String changeable;
  double value = 10;
  double onchanged;
  double _currentSliderValue = 0;
  double _currentSliderValue2 = 0;
  double boyOlcusu = 170;
  double kiloOlcusu = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Life Cycles',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Row(
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Height',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '${boyOlcusu.round()}',
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 37),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: OutlineButton(
                                  focusColor: Colors.amber,
                                  textColor: Colors.amber,
                                  onPressed: () {
                                    setState(() {
                                      boyOlcusu += 1;
                                    });
                                  },
                                  child: Icon(FontAwesomeIcons.plus),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: OutlineButton(
                                  textColor: Colors.amber,
                                  onPressed: () {
                                    setState(() {
                                      boyOlcusu -= 1;
                                    });
                                  },
                                  child: Icon(FontAwesomeIcons.minus),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: Row(
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Kilo',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '${kiloOlcusu.round()}',
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 37),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: OutlineButton(
                                  focusColor: Colors.amber,
                                  textColor: Colors.amber,
                                  onPressed: () {
                                    setState(() {
                                      kiloOlcusu += 1;
                                    });
                                  },
                                  child: Icon(FontAwesomeIcons.plus),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: OutlineButton(
                                  textColor: Colors.amber,
                                  onPressed: () {
                                    setState(() {
                                      kiloOlcusu -= 1;
                                    });
                                  },
                                  child: Icon(FontAwesomeIcons.minus),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'How many times a week do you exercise?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      _currentSliderValue2.round().toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightBlue,
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue2,
                      min: 0,
                      max: 7,
                      divisions: 7,
                      label: _currentSliderValue2.round().toString(),
                      onChanged: (double value2) {
                        setState(() {
                          _currentSliderValue2 = value2;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'How many cigarettes do you smoke a day?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      _currentSliderValue.round().toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightBlue,
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 30,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          changeable = 'Man';
                        });
                      },
                      renk: changeable == 'Man' ? Colors.blue : Colors.white,
                      child: IconCinsiyyet(
                        cins: 'Man',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          changeable = 'Woman';
                        });
                      },
                      renk: changeable == 'Woman' ? Colors.blue : Colors.white,
                      child: IconCinsiyyet(
                        cins: 'Woman',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
