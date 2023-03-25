import 'package:flutter/material.dart';
import 'package:screibble_game/create_room_screen.dart';
import 'package:screibble_game/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Create / Join the game",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                buttonName: "Create",
                onPressed: () {},
              ),
              CustomButton(
                buttonName: "Join",
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
