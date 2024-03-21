import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier{
  int flag=-1;
  void changeFlag(int x){
    flag=x;
    print(flag);
    notifyListeners();
  }
}