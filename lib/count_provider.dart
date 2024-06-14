import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier{

  ///state (data)
  int _counter = 0;

  List<Map<String, dynamic>> _mData = [];

  ///add
  ///fetch
  ///update
  ///delete


  ///set
  void incrementCount(){
    _counter++;
    notifyListeners();
  }

  ///get
  int getValue(){
    return _counter;
  }

}