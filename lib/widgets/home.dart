import 'package:flutter/material.dart';
import 'package:pomodoro/models/nav_item_model.dart';
import 'package:rive/rive.dart';

const Color bottomNavBgColor = Color(0xFF17203A);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 70, bottom: 10),
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
              padding: EdgeInsets.only(top: 40),
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
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 56,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
          decoration: BoxDecoration(
            color: bottomNavBgColor.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            boxShadow: [BoxShadow(
              color: bottomNavBgColor.withOpacity(0.3),
              offset: const Offset(0,50),
              blurRadius: 20,
            )]
          ),
          child: Row(
            children: List.generate(
                bottomNavItems.length,
                    (index) => SizedBox(
                      height: 36,
                        width: 36,
                      child: RiveAnimation.asset(bottomNavItems[index].rive.src),
                    )),
          )
        ),
      ),
    );
  }
}
