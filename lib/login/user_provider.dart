import 'package:flutter/material.dart';
import 'package:my_project/login/user.dart';

class UserProvider extends InheritedWidget{
  final Widget child;
  List<User> users = [];
  UserProvider(
    {
      required this.child,
    }
  ) :super(child: child);

  static UserProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<UserProvider>
    ();
  }
  bool updateShouldNotify(UserProvider widget) {
    return true;
  }
}

// guardar a lista de usuario