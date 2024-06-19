import 'package:flutter/foundation.dart';

class ListProvider extends ChangeNotifier{

  //data
  List<Map<String, dynamic>> _mData = [];

  ///add
  void addData(Map<String, dynamic> newData){
    _mData.add(newData);
    notifyListeners();
  }

  ///fetch
  List<Map<String, dynamic>> getData() => _mData;

  ///delete data
  void deleteData(int index){
    _mData.removeAt(index);
    notifyListeners();
  }

}