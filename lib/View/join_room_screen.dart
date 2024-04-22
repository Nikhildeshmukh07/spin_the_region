import 'package:flutter/material.dart';

import '../Widgets/custum_text.dart';
import '../Widgets/custum_textfeild.dart';
import '../Widgets/cutom_button.dart';
import '../responsive/responsive.dart';

 class JoinRommScreen extends StatefulWidget {
  static String routName = '/join-room';

  const JoinRommScreen({super.key});

  @override
  State<JoinRommScreen> createState() => _JoinRommScreenState();
}

class _JoinRommScreenState extends State<JoinRommScreen> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                  shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
                  text: 'Join Room',
                  fontsize: 70),
              SizedBox(height: size.height * 0.08),
              CustumTextField(
                  controller: _nameController, hintText: 'Enter Your Name'),
              const SizedBox(height: 20),
              CustumTextField(
                  controller: _gameIdController, hintText: 'Enter Game Id'),
              SizedBox(height: size.height * 0.045),
              CustomButton(onTap: () {}, text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
