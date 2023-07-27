import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [_PageOne(), _PageTwo()],
      ),
    );
  }
}

class _PageTwo extends StatelessWidget {
  const _PageTwo();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PageOne extends StatelessWidget {
  const _PageOne();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        _Background(),
        _MainContent(),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      width: double.infinity,
      child: const Image(
        image: AssetImage("assets/scroll-1.png"),
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent();

  @override
  Widget build(BuildContext context) {
    const textTitleStyle = TextStyle(
      color: Colors.white,
      fontSize: 60,
      fontWeight: FontWeight.bold,
    );

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            "11°",
            style: textTitleStyle,
          ),
          const Text(
            "Friday",
            style: textTitleStyle,
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
