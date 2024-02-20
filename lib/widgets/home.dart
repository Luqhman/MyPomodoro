import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 70, bottom: 10),
                  child: Text(
                      "This is the left button",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20, top: 70, bottom: 10),
                      child: Text(
                        "This is the right button",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                        "Hi Brownies! How are you feeling today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )
                ),
              ),
            ),
          ],
        ),
      )

      );
  }
}
