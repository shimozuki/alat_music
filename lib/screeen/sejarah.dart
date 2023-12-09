import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_sumbawa/footer_bar/footer_bar.dart';
import 'package:music_sumbawa/screeen/about_page.dart';
import 'package:music_sumbawa/screeen/home_page.dart';
import 'package:music_sumbawa/screeen/upload_page.dart';

class Sejarah extends StatefulWidget {
  const Sejarah({super.key});

  @override
  State<Sejarah> createState() => _SejarahState();
}

class _SejarahState extends State<Sejarah> {
   int _selectedIndex = 1;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Upload()),
      );
    } else if (_selectedIndex == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const About()),
      );
    }
    else if (_selectedIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '',
            style: GoogleFonts.playfairDisplay(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 1.3325,
              color: Color(0xff000000),
              decorationColor: Color(0xff000000),
            ),
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF9CCC65)),
          centerTitle: true, // Membuat teks menjadi di tengah
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 17, 31),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // chapteroneaEX (10:1169)
                  margin: EdgeInsets.fromLTRB(15, 0, 1, 29),
                  child: Text(
                    'Sejarah Umum Alat Music Sumbawa',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      height: 1.3325,
                      color: Color(0xff000000),
                      decorationColor: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // frame25rxj (10:1170)
                  margin: EdgeInsets.fromLTRB(1, 0, 3, 30),
                  padding: EdgeInsets.fromLTRB(17, 0, 17, 10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff000000)),
                  ),
                  child: Center(
                    // theinfectioncomesasfeveratnigh (10:1171)
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 318,
                        ),
                        child: Text(
                          'Alat musik tertua yang pernah ditemukan adalah Divje Babe Flute dari Gua Divje Babe di Slovenia. Alat musik ini diperkirakan berasal dari 43.000–82.000 tahun yang lalu. Alat musik ini terbuat dari tulang paha beruang muda dan konon digunakan oleh manusia Neanderthal. Musik nusantara adalah musik yang berkembang dengan mencerminkan identitas Indonesia, baik dari segi bahasa maupun karakter melodinya. Sudah lama sejak awal sejarah musik Indonesia. Ada banyak tahapan dari Indonesia ke periode modern, dari era Hindu-Budha, untuk memantau perkembangan musik di Indonesia.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.7142857143,
                            color: Color(0xff000000),
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
       bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTabTapped: _onTabTapped,
      ),
      ),
    );
  }
}