
import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({
    super.key,
    required this.name ,
  });
  final String? name;
  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  late final String? name;
  Color buttonColor = Colors.blue;
  bool buttonschange = true;
  void changeColor() {
    setState(() {
      // Change the button color to a new color when pressed
      buttonschange = !buttonschange;
      buttonColor = Colors.red; // Change this to the desired color
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 137,
          height: 43,
          decoration: BoxDecoration(
            color: buttonschange
                ? const Color(0xffFE724C)
                : const Color(0xff393948),
            borderRadius: BorderRadius.circular(28.5),
          ),
          child: Center(
            child: InkWell(
              onTap: () => changeColor(),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: AssetImage("assets/Group 2.png")),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.name ?? "ali",
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
