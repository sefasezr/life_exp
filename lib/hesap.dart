import 'package:flutter/cupertino.dart';
import 'package:yasam_dong/user_data.dart';

class Hesap {
  late UserData _userData;
  Hesap(this._userData);

  double hesaplama() {
    double sonuc;

    sonuc = 90 + _userData.yapilanSpor! - _userData.icilenSigara!;
    sonuc = sonuc + (_userData.boy! / _userData.kilo!);

    if (_userData.seciliCinsiyet == 'KADIN') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
