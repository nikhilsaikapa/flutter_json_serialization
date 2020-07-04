import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/user.dart';

enum ViewState {
  Idle,
  Busy
}
class BaseViewModel extends ChangeNotifier {
  ViewState viewState = ViewState.Idle;
  bool get isBusy => viewState == ViewState.Busy;
  void setState(ViewState state){
    if(viewState != state){
      viewState = state;
      notifyListeners();
    }
  }
}
class HomeViewModel extends BaseViewModel{
  List<User> users = [];

  HomeViewModel(){
    initialise();
  }
  Future<void> initialise() async{
    setState(ViewState.Busy);
    var res = await http.get('https://jsonplaceholder.typicode.com/users');
    List<dynamic> fetchedUsers = jsonDecode(res.body);
    users = fetchedUsers.map((user) => User.fromJson(user)).toList();
    setState(ViewState.Idle);
  }
}