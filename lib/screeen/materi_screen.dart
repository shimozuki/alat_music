import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Materi extends StatefulWidget {
  const Materi({super.key});

  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            '',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff000000),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          centerTitle: false,
          iconTheme: const IconThemeData(
            color: Color(0xff000000), // Ubah warna icon menjadi hitam
          ),
          elevation: 0,
        ),
        body: DefaultTabController(
          length: 4,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 285,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffc4c4c4),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/gendang.jpg'),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 470,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 25,
                        top: 9,
                        child: Container(
                          width: 244,
                          height: 45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Text(
                                  'Santong Serek',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1725,
                                    color: Color(0xff3e3e3e),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                child: Text(
                                  'Name Creator',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725,
                                    color: Color(0xff3e3e3e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.white,
                          child: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                color: Color(0xd846724d),
                                width: 2.5,
                              ),
                            ),
                            labelPadding: EdgeInsets.only(left: 0, right: 9),
                            tabs: [
                              Tab(text: 'Sejarah'),
                              Tab(text: 'Tutorial'),
                              Tab(text: 'Perawatan'),
                              Tab(text: 'Pembuatan'),
                            ],
                            labelColor: Color(0xd846724d),
                            unselectedLabelColor:
                                Color.fromARGB(215, 170, 170, 170),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 20,
                        right: 25,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 1.0, // Adjust this height as needed
                          child: TabBarView(
                            children: [
                              Center(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height * 1.0),
                                    width: double.infinity,
                                    child: RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Genang merupakan alat musik pukul yang terbuat dari kulit kambing yang dimainkan dengan cara dipukul dan ditepak. Alat ini tergolong alat musik membranofon, yaitu alat musik yang sumber suaranya berasal dari selaput kulit. Di Bima, alat ini disebut dengan genda, dan gendang untuk di Lombok. Sedangkan di Makasar dinamakan dengan ganrang, sementara di Jawa dan Sunda bernama kendhang. Namun nama yang paling umum untuk alat ini adalah gendang.\n \nMenurut ukurannya gendang terbagi menjadi gendang berukuran kecil, sedang dan besar. Genang termasuk gendang berukuran sedang. Di Lombok terdapat gendang berukuran besar yang dikenal dengan nama gendang beleq, dan di Bengkulu di sebut dengan dol, sedangkan di Padang dinamakan tambua. Sementara untuk gendang berukuran kecil, salah satunya terdapat di Papua, yaitu tifa. \n \n Seperti juga genda Mbojo dan gendang Sasak, maka genang terbagi menjadi 2 (dua), yaitu genang pengina (induk) dan genang penganak (anak). Kalau di Bima disebut dengan genda ka ina dan genda ka anak, sedangkan untuk gendang beleq disebut gendang mama (laki-laki) dan gendang nina (perempuan). Genang pengina’ merupakan genang pembawa pukulan pokok dan bersifat matris, sedangkan genang penganak merupakan genang penghias pukulan pokok yang bersifat ritmis.\n \n  Di lihat dari sejarahnya, genang dilahirkan dari pertemuan antara 2 (dua) kebudayaan yaitu budaya Makasar dan Sumbawa. Penguasaan Goa terhadap kerajaan Sumbawa pada abad 17 telah membawa pengaruh pada seluruh aspek kehidupan termasuk alat musik tradisional. Bentuk genang Sumbawa sama persis dengan ganrang Makasar dan ganddah suku Bajo, hanya ukurannya yang berbeda. \n \n Di seluruh daerah di Indonesia, gendang memiliki fungsi yang sangat vital, begitu pula dengan genang. Dalam Ansambel Musik Gong Genang yang digunakan untuk mengiringi tari, pencak silat, dsb, genang berfungsi sebagai pembawa rhytme atau pemimpin irama. Dalam menjalankan fungsinya sebagai pemimpin irama, genang memiliki temung atau jenis pukulan genang. (WN)',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               Center(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height * 1.0),
                                    width: double.infinity,
                                    child: RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Berikut adalah langkah-langkah umum tentang cara memainkan gendang. Gendang adalah instrumen musik perkusi yang memiliki berbagai variasi di seluruh dunia, jadi instruksi ini mungkin dapat disesuaikan tergantung pada jenis gendang yang Anda mainkan. Untuk tujuan ini, kita akan berasumsi Anda bermain gendang yang biasa digunakan dalam musik populer atau tradisional.\n \n 1.Posisi Duduk atau Berdiri: \n\n Posisi Anda tergantung pada jenis gendang dan konteks musiknya. Jika Anda menggunakan gendang tradisional yang diletakkan di tanah, Anda mungkin perlu duduk atau berjongkok. Jika Anda menggunakan gendang yang dipasang di bahu (seperti snare drum), Anda akan berdiri atau duduk tegak.',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height * 1.0),
                                    width: double.infinity,
                                    child: RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Merawat gendang dengan baik dapat memperpanjang umur pakainya dan memastikan kualitas suara yang baik. Berikut adalah beberapa langkah singkat untuk merawat gendang: \n\n 1. Bersihkan permukaan gendang secara berkala dengan kain lembut atau sikat yang tidak akan merusak kulit atau permukaan gendang. Hindari penggunaan bahan pembersih yang keras atau berminyak.\n\n2. Pastikan gendang disimpan di lingkungan dengan kelembaban yang stabil. Kelembaban yang rendah atau tinggi berlebihan dapat memengaruhi kulit gendang.\n\n3. Simpan gendang di tempat yang aman dan stabil. Hindari menyimpan gendang di tempat yang terlalu panas, terlalu dingin, atau terpapar langsung sinar matahari.',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height * 1.0),
                                    width: double.infinity,
                                    child: RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Merawat gendang dengan baik dapat memperpanjang umur pakainya dan memastikan kualitas suara yang baik. Berikut adalah beberapa langkah singkat untuk merawat gendang: \n\n 1. Bersihkan permukaan gendang secara berkala dengan kain lembut atau sikat yang tidak akan merusak kulit atau permukaan gendang. Hindari penggunaan bahan pembersih yang keras atau berminyak.\n\n2. Pastikan gendang disimpan di lingkungan dengan kelembaban yang stabil. Kelembaban yang rendah atau tinggi berlebihan dapat memengaruhi kulit gendang.\n\n3. Simpan gendang di tempat yang aman dan stabil. Hindari menyimpan gendang di tempat yang terlalu panas, terlalu dingin, atau terpapar langsung sinar matahari.',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
