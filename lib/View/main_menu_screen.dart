import 'package:flutter/material.dart';
import 'package:spin_the_region/View/create_room_screen.dart';
import 'package:spin_the_region/View/join_room_screen.dart';
import 'package:spin_the_region/Widgets/cutom_button.dart';
import 'package:spin_the_region/responsive/responsive.dart';

class MainMenuScreen extends StatelessWidget {
  static String routName = '/main-menu';

  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRommScreen.routName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: 'Create Room'),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onTap: () => joinRoom(context), text: 'Join Room')
          ],
        ),
      ),
    );
  }
}
