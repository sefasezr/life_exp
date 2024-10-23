import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_dong/constants.dart';
import 'icon_cinsiyet.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0;
  double yapilanSpor = 0;
  int boy = 170;
  double kilo = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text('BOY', style: kMetinStili),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              boy.toString(),
                              style: kSayiStili,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy++;
                                    });

                                    print('ustteki buton basildi');
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.blue),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius
                                          .zero, // Butonun köşeleri keskin olur
                                    ),
                                    minimumSize: Size(30, 30),
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.minimize,
                                    size: 20,
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.blue),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    minimumSize: Size(30, 30),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'KİLO',
                              style: kMetinStili,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              kilo.toString(),
                              style: kSayiStili,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.lightBlue),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    minimumSize: Size(30, 30),
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Icon(Icons.minimize_rounded),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.lightBlue),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    minimumSize: Size(30, 30),
                                  ),
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
              flex: 1,
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Haftana Kaç Gün Spor Yapıyorsunuz?',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      yapilanSpor.round().toString(),
                      style: kSayiStili,
                    ),
                    Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: yapilanSpor,
                      onChanged: (double newValue) {
                        setState(() {
                          yapilanSpor = newValue;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Günde Kaç Sigara İçiyorsunuz?',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${icilenSigara.round()}',
                      style: kSayiStili,
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        value: icilenSigara,
                        onChanged: (double newValue) {
                          setState(() {
                            icilenSigara = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: IconCinsiyet(
                        icon: FontAwesomeIcons.venus,
                        cinsiyet: 'KADIN',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                        onPress: () {
                          setState(() {
                            seciliCinsiyet = 'ERKEK';
                          });
                        },
                        renk: seciliCinsiyet == 'ERKEK'
                            ? Colors.lightBlue[100]
                            : Colors.white,
                        child: IconCinsiyet(
                          icon: FontAwesomeIcons.mars,
                          cinsiyet: 'ERKEK',
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
