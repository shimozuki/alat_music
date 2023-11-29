import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_sumbawa/screeen/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 30, 0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xfff5f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 31, 19),
                child: Text(
                  'Welcome',
                  style: GoogleFonts.poppins(
                    fontSize: 56,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xff2d6936),
                  ),
                ),
              ),
              Container(
                // weregladthatthatyouarehereVxP (111:220)
                margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
                child: Text(
                  'we’re glad that that you are here',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    height: 1.2125,
                    color: Color(0xff2d6936),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40, 0, 0, 106),
                width: 275,
                height: 308,
                child: Image.asset('assets/Composer-bro.png'),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 50.89, 39),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    width: double.infinity,
                    height: 46,
                    decoration: const BoxDecoration(
                      color: Color(0xd846724d),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Lets get started',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            height: 1.1725,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
