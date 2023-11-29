import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_sumbawa/footer_bar/footer_bar.dart';
import 'package:music_sumbawa/screeen/about_page.dart';
import 'package:music_sumbawa/screeen/materi_screen.dart';
import 'package:music_sumbawa/screeen/upload_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = -1;
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Upload()),
      );
    } else if (_selectedIndex == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const About()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Alat Music Sumbawa',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 2.4,
              color: Color(0xff000000),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu_open_rounded,
                color: Color(0xff141e47),
              ),
              onPressed: () {
                print('Hamburger icon clicked!');
              },
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (selectedTabIndex == index) {
                            selectedTabIndex =
                                -1; // Toggle off if the same item is tapped
                          } else {
                            selectedTabIndex = index;
                          }
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Materi()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        padding: EdgeInsets.fromLTRB(17, 6, 0, 7),
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffdcdde0)),
                          color: selectedTabIndex == index
                              ? Color(0xd846724d)
                              : Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff1f2f5),
                              offset: Offset(0, 10),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 50, 7),
                              padding: EdgeInsets.fromLTRB(9, 0, 14, 0),
                              height: double.infinity,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/gendang.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: Text(
                                          'Santong Srek',
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            height: 2.7272727273,
                                            color: selectedTabIndex == index
                                                ? Color(0xffffffff)
                                                : Color(0xff201a25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // inclassJZH (111:25)
                                    left: 0,
                                    top: 17,
                                    child: Align(
                                      child: SizedBox(
                                        width: 137,
                                        height: 60,
                                        child: Text(
                                          'Content Creator',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            height: 5,
                                            color: selectedTabIndex == index
                                                ? Color(0xffffffff)
                                                : Color(0xff201a25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // member1Th (111:26)
                                    left: 0,
                                    top: 47,
                                    child: Align(
                                      child: SizedBox(
                                        width: 205,
                                        height: 60,
                                        child: Text(
                                          '45 Riview',
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            height: 3.75,
                                            color: selectedTabIndex == index
                                                ? Color(0xffffffff)
                                                : Color(0xff201a25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
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
