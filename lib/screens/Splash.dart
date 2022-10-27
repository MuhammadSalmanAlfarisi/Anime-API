import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/pattern-header.png'),
                fit: BoxFit.fill,
                alignment: Alignment.bottomRight),
          ),
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/MyAnimeList_Logo.jpeg'),
              Center(
                child: Column(
                  children: [
                    Text('Modul 3 MDP',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
