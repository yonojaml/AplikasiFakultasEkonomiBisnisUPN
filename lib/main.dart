import 'package:flutter/material.dart';
import 'faculty_detail.dart';
import 'author_detail.dart';
import 'launch_url.dart';

void main() {
  runApp(FacultyApp());
}

class FacultyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '046, 071 - Fakultas Ekonomi dan Bisnis',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Fakultas Ekonomi dan Bisnis'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Fakultas Ekonomi dan Bisnis',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Container(
            color: Colors.green,
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Universitas Pembangunan Nasional "Veteran" Jawa Timur',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/feb-logo.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'PROFIL FAKULTAS EKONOMI DAN BISNIS UPNVJT',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Fakultas Ekonomi Universitas Pembangunan Nasional “Veteran” Jatim, merupakan salah satu Fakultas tertua dan memiliki student body terbanyak dilingkungan Universitas Pembangunan Nasional “Veteran” Jawa Timur.\n\nFakultas Ekonomi didirikan pada tahun 1956, dengan nama Akademi Administrasi Perusahaan “Veteran” (AAPV).\n\nDan Sejak tanggal 4 April 2013, berdasarkan SK Rektor Fakultas Ekonomi UPN “Veteran” Jawa Timur berubah menjadi Fakultas Ekonomi Dan Bisnis.',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            launchURL('https://febis.upnjatim.ac.id/');
                          },
                          child: const Text(
                            '🌐 febis.upnjatim.ac.id',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            launchURL('mailto:feb@upnjatim.ac.id');
                          },
                          child: const Text(
                            '✉ feb@upnjatim.ac.id',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Faculty.programs.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FacultyDetail(program: Faculty.programs[index]),
                      ),
                    );
                  },
                  child: buildFacultyCard(Faculty.programs[index]),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    'Oleh:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Author.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AuthorDetail(author: Author.data[index]),
                        ),
                      );
                    },
                    child: buildAuthorCard(Author.data[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildFacultyCard(Program program) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: Color(0xFFF07137),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset('assets/${program.imageUrl}'),
          SizedBox(
            height: 14.0,
          ),
        ],
      ),
    ),
  );
}

Widget buildAuthorCard(Author author) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(author.imageUrl),
          ),
          SizedBox(height: 8.0),
          Text(
            author.name,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    ),
  );
}
