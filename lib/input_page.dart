import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_dong/constants.dart';
import 'package:yasam_dong/result_page.dart';
import 'package:yasam_dong/user_data.dart';
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
  int kilo = 65;

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
                      child: buildRowOutlineButton('BOY'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      child: buildRowOutlineButton('KİLO'),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Haftana Kaç Gün Spor Yapıyorsunuz?',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        yapilanSpor.round().toString(),
                        style: kSayiStili,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Slider(
                        min: 0,
                        max: 7,
                        divisions: 7,
                        value: yapilanSpor,
                        onChanged: (double newValue) {
                          setState(() {
                            yapilanSpor = newValue;
                          });
                        },
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Günde Kaç Sigara İçiyorsunuz?',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '${icilenSigara.round()}',
                        style: kSayiStili,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Slider(
                          min: 0,
                          max: 30,
                          value: icilenSigara,
                          onChanged: (double newValue) {
                            setState(() {
                              icilenSigara = newValue;
                            });
                          }),
                    )
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
            ButtonTheme(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(UserData(
                              kilo: kilo,
                              boy: boy,
                              seciliCinsiyet: seciliCinsiyet,
                              yapilanSpor: yapilanSpor,
                              icilenSigara: icilenSigara))));
                },
                child: Text(
                  'HESAPLA',
                  style: kMetinStili,
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white)),
              ),
            ),
          ],
        ));
  }

  Row buildRowOutlineButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotatedBox(
          quarterTurns: 3,
          child: Text(label, style: kMetinStili),
        ),
        SizedBox(
          width: 5,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            label == 'BOY' ? boy.toString() : kilo.toString(),
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
                    label == 'BOY' ? boy++ : kilo++;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Butonun köşeleri keskin olur
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
                    label == 'BOY' ? boy-- : kilo--;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 10,
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue),
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  minimumSize: Size(30, 30),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
