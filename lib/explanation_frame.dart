import 'package:flutter/material.dart';

class ExplanationFrame extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const ExplanationFrame({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/images/wood.jpg').image,
            ),
          ),
        ),
        Container(
          height: screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black87,
              Colors.black12,
            ],
          )),
        ),
        Container(
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth / 3 * 2,
                child: Text(
                  "Creating beauty out of the broken",
                  style: TextStyle(
                      fontFamily: 'Rajdhani',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 50),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 2,
                width: screenWidth / 3 * 2,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 300,
                width: screenWidth / 3 * 2,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(
                      fontFamily: 'Rajdhani',
                      color: Colors.white,
                      fontSize: 30),
                ),
              ),
              Container(
                width: screenWidth,
              )
            ],
          ),
        )
      ],
    );
  }
}
