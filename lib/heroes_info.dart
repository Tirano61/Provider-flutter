

import 'package:flutter/cupertino.dart';

class HeroesInfo with ChangeNotifier{

  String _datos = '';
  String _caravana = '';
  String _lote = '';

  get getLote{
    return _lote;
  }
  void setLote(String lote){
    _lote = lote;
  }

  get getCaravana{
    return _caravana;
  }
  void setcaravana(String caravana){
    _caravana = caravana;
  }

  get getDatos {
    return _datos;
  }

  void setDatos(String datos) {
    _datos = datos;

    notifyListeners();
  }



}