import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    child: MyContainer(),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(),
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
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: 1.0,
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
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        value: 1.0,
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
