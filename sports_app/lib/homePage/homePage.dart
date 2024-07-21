
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF0E6),
        title: Text(widget.title),
      ),
      body: PageView(
        children: [
          _buildPage(
            image: 'assets/images/champions.png',
            title: 'Champions',
            description:
            'The UEFA Champions League is a club-based European tournament for the national champions.',
          ),
          _buildPage(
            image: 'assets/images/football2.jpg',
            title: 'Fitness',
            description:
            'Players try to score points by passing the ball.',
          ),
          _buildPage(
            image: 'assets/images/football.jpg',
            title: 'Football',
            description:
            'Practicing football will get you on the right track to improving your skills.',
            isLastPage: true,
          ),
        ],
      ),
    );
  }

  Widget _buildPage({
    required String image,
    required String title,
    required String description,
    bool isLastPage = false,
  }) {
    return ListView(

      shrinkWrap: true,
      children: <Widget>[
        const SizedBox(height: 70),
        Image.asset(image),
        const  SizedBox(height: 50),
        Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 53, 47, 68),
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 53, 47, 68),
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 50),
        InkWell(
          onTap: () {

          },
          child: Container(
            width: 114,
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 92, 84, 112),
            ),
            child: Center(
              child: Text(
                isLastPage ? 'Get Started' : 'Next',
                style: const TextStyle(
                  color: Color.fromARGB(255, 53, 47, 68),
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
