import 'package:flutter/material.dart';
import 'package:spacescape/game/game.dart';

class Controller extends StatefulWidget {
  static const String id = 'Controller';
  final SpacescapeGame game;
  const Controller({super.key, required this.game});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Btn(icon: Icons.arrow_drop_up),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Btn(icon: Icons.arrow_left),
              SizedBox(
                width: 50,
              ),
              Btn(icon: Icons.arrow_right),
            ],
          ),
          Btn(icon: Icons.arrow_drop_down),
        ],
      ),
    );
  }
}

class Btn extends StatelessWidget {
  final IconData icon;
  const Btn({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(2),
        decoration:
            BoxDecoration(color: Colors.white30, shape: BoxShape.circle),
        child: Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
