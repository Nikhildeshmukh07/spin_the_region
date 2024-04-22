import 'package:spin_the_region/Widgets/custum_text.dart';

import 'package:flutter/material.dart';
import 'package:spin_the_region/Widgets/cutom_button.dart';
import 'package:spin_the_region/responsive/responsive.dart';

import '../Widgets/custum_textfeild.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routName = '/create-room';

  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
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
                  text: 'Create Room',
                  fontsize: 70),
              SizedBox(height: size.height * 0.08),
              CustumTextField(
                  controller: _nameController, hintText: 'Enter Your Name'),
              SizedBox(height: size.height * 0.045),
              CustomButton(onTap: () {}, text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
