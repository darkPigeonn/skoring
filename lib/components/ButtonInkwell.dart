import 'package:flutter/material.dart';
import 'package:skoring/pages/Resources/Prinsip.dart';

class CustomButton extends StatefulWidget {
  final IconData icon;
  final String label;
  const CustomButton({super.key, required this.icon, required this.label});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 49, 0, 141),
        child: InkWell(
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 100 : sideLength = 50;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResourcesPage()));
            });
          },
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Icon(
                widget.icon,
                size: 60,
                color: Colors.white,
              ),
              Text(
                widget.label,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
