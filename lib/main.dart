import 'dart:js';

import 'package:flutter/material.dart';
import 'package:spin_the_region/View/create_room_screen.dart';
import 'package:spin_the_region/View/join_room_screen.dart';
import 'package:spin_the_region/ViewModel/1_Main_file.dart';
import 'package:spin_the_region/utils/colors.dart';

import 'View/main_menu_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MainMenuScreen(),
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
    routes: {
      MainMenuScreen.routName: (context) => const MainMenuScreen(),
      JoinRommScreen.routName: (context) => const JoinRommScreen(),
      CreateRoomScreen.routName: (context) => const CreateRoomScreen()
    },
    initialRoute: MainMenuScreen.routName,
  ));
}
