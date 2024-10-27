import 'package:flutter/material.dart';
import 'package:yasam_dong/constants.dart';
import 'package:yasam_dong/user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  UserData? _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sonuç Sayfası')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 8,
              child: Center(
                  child: Text(
                Hesap(_userData!).hesaplama().round().toString(),
                style: kMetinStili,
              ))),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'GERİ DÖN',
                style: kMetinStili,
              ),
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
