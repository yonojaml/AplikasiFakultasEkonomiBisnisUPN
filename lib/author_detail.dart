import 'package:flutter/material.dart';
import 'launch_url.dart';

class Author {
  String imageUrl;
  String name;
  String ttl;
  String address;
  String phone;
  String email;
  String github;
  List<String> educations;
  List<String> achievements;

  Author(this.imageUrl, this.name, this.ttl, this.address, this.phone,
      this.email, this.github, this.educations, this.achievements);

  static List<Author> data = [
    Author(
      'assets/icha.jpeg',
      'Nurul Izzah',
      'Sidoarjo, 8 Juli 2004',
      'Jl. Bebekan Meduran No. 49 RT. 20/RW.06, Kec. Taman, Sepanjang, Sidoarjo',
      '085812636314',
      '22082010046@student.upnjatim.ac.id',
      'https://github.com/ichaazhh',
      [
        '- SMPN 1 Taman',
        '- SMAN 1 Taman',
        '- UPN "Veteran" Jawa Timur - Sistem Informasi',
      ],
      [
        '1. Juara 3 Lomba UI UX Design Diesnatalis Fasilkom UPNVJT 2023\n2. Juara 2 Lomba UI UX Design T-DAYS #12 UAD\n3. Finalis Lomba UI UX Design Diesnatalis Sistem Informasi ITASE 5.0 Institut Teknologi Telkom Purwokerto'
      ],
    ),
    Author(
      'assets/raka.jpeg',
      'Septiono Raka',
      'Probolinggo, 10 September 2003',
      'Jl Kolonel Sugiono Gg Pelita, Waru Sidoarjo',
      '081239684020',
      '22082010071@student.upnjatim.ac.id',
      'https://github.com/yonojaml',
      [
        'SMP Unggulan Amanatul Ummah Surabaya',
        'SMK Negeri 3 Surabaya',
        'UPN "Veteran" Jawa Timur - Sistem Informasi',
      ],
      ['1. Juara Harapan 1 UI/UX Indoneris 2023 Universitas Amikom Purwokerto'],
    ),
  ];
}

class AuthorDetail extends StatefulWidget {
  final Author author;

  const AuthorDetail({Key? key, required this.author}) : super(key: key);

  @override
  _AuthorDetailState createState() {
    return _AuthorDetailState();
  }
}

class _AuthorDetailState extends State<AuthorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.author.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(widget.author.imageUrl),
                ),
                SizedBox(height: 4),
                Text(
                  widget.author.name,
                  style: TextStyle(fontSize: 18),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tempat, Tanggal Lahir',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            widget.author.ttl,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alamat',
                            style: TextStyle(
                                fontSize: 18, 
                                fontWeight: FontWeight.bold, 
                                color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            widget.author.address,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'No. HP',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            widget.author.phone,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            widget.author.email,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Github',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          GestureDetector(
                            onTap: () {
                              launchURL(widget.author
                                  .github); // Function to open URL in new tab
                            },
                            child: Text(
                              widget.author.github,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    // Container for education
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pendidikan',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          // Deskripsi pendidikan
                          for (var edu in widget.author.educations)
                            Text(
                              edu,
                              style: TextStyle(fontSize: 15, color: Colors.white,),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    // Container for achievements
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF07137),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prestasi',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          // Deskripsi prestasi
                          for (var achievement in widget.author.achievements)
                            Text(
                              achievement,
                              style: TextStyle(fontSize: 15, color: Colors.white,),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
