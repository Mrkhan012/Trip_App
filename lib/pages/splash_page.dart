import 'package:flutter/material.dart';
import 'package:trip_app/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/six.jpg"), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.5),
            Colors.black.withOpacity(.2)
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Welcome To Trip",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Explore the world with Trip App - Your ultimate travel companion!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [Colors.purple, Colors.redAccent])),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    child: const Text(
                      "Explore",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
