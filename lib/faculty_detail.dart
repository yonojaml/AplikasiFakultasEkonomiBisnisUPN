import 'package:flutter/material.dart';
import 'launch_url.dart';

class FacultyDetail extends StatelessWidget {
  final Program program;

  const FacultyDetail({Key? key, required this.program}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(program.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: program.bab.map((bab) {
              return _buildBabCard(bab.title, bab);
            }).toList(),
          ),
        ),
      ),
    );
  }
}

  Widget _buildBabCard(String title, Bab bab) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: Color(0xFFF07137), // Use color code #f07137
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Text color is set to white
            ),
          ),
          SizedBox(height: 8),
          // Check if the description is "Laman Resmi" or "Email Prodi"
          if (title == 'Laman Resmi' || title == 'Email Prodi')
            GestureDetector(
              onTap: () {
                launchURL(bab.description);
              },
              child: Text(
                bab.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          else
            Text(
              bab.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          SizedBox(height: 16),
        ],
      ),
    ),
  );
}


class Faculty {
  static List<Program> programs = Program.getProgramList();
}

class Program {
  String imageUrl;
  String name;
  List<Bab> bab;

  Program(this.imageUrl, this.name, this.bab);

  static List<Program> getProgramList() {
    return [
      Program(
        'EP.jpg',
        'Ekonomi Pembangunan',
        [
          Bab('Profile Program Studi', 
              'Program Studi Ekonomi Pembangunan Fakultas Ekonomi dan Bisnis UPNV Jawa Timur didirikan pada tahun 1974 dengan ijin pendirian dari Departemen Pertahanan Keamanan (Dephankam) dengan status “Negeri Kedinasan”.\n\nPada tahun 2003 pertama kali Progdi Ekonomi Pembangunan di akreditasi oleh BAN PT Depdiknas memperoleh Nilai B.  Proses dan status akreditasi Program Studi didapat  pada tanggal 13 Nopember 2008, dengan batas akreditasi sampai dengan 13 Nopember 2013 dengan Surat Keputusan BAN-PT No. 029/BAN-PT/AK-XI/S1/XI/2008 dengan nilai “B’.\n\nAkreditasi terakhir pada tanggal 23 Mei 2017 dengan Surat Keputusan No. 1530/SK/BAN-PT/Akred/S/V/2017 dengan nilai “A”. Akreditasi terakhir tersebut berlaku sampai dengan 23 Mei 2022.\n\nPada tahun 2021 Program Studi Ekonomi Pembangunan mendapatkan pengakuan Internasional dalam bentuk Akreditasi Internasional FIBAA yang berlaku hingga tahun 2026.'),
          Bab('Visi',
              'Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki kareakter bela negara.'),
          Bab('Misi',
              '1. Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.\n 2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat.\n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n 4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.\n 5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.\n 6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.'),
          Bab('Akreditasi', 'Unggul'),
          Bab('Kaprodi', 'Riko Setyawijaya, S. E, M. M.'),
          Bab('Dosen',
              '1. Prof. Dr. Syamsul Huda, S.E., M.T.\n2. Dr. Ignatia Martha, S.E., M.E.\n3. Dr. Muchtolifah, S.E., M.P.\n4. Dr. Ririt Iriani, S.E., M.E.\n5. Drs. Ec. Arief Bachtiar, M.Si.'),
          Bab('Laman Resmi', 'https://ekbang.upnjatim.ac.id/#'),
          Bab('Email Prodi', 'mailto:progdi.ep@gmail.com'),
          Bab('Prestasi Mahasiswa',
              '1. Juara 1 & 3 Lomba Essay Milenial yang diadakan IDEI Insan Doktor Ekonomi Indonesia Oleh Mahasiswa Prodi Ekonomi Pembanguna FEB UPN "Veteran" Jatim.\n\n2. BEST SPEAKER NATIONAL BUSINESS PLAN COMPETITION\n- Amelia Diva Efendi (ADMINISTRASI PUBLIK, 2020),\n- Icha Sinaga (SISTEM INFORMASI, 2020),\n- Nadia Afny Zuraida (EKOΝΟΜΙ PEMBANGUNAN, 2020)\n\n3. BEST TEAM ANNUAL NATIONAL BUSINESS PLAN COMPETITION IDEAS 7 UNIVERSITAS GADJAH MADA 2021\n- Sarah Adora Febria (ADMINISTRASI PUBLIK, 2020)\n- Azzahra Zulfalinda (ΕΚΟΝΟΜΙ PEMBANGUNAN, 2020)'), // Deskripsi prestasi dalam bentuk poin
        ],
      ),
      Program(
        'AK.jpg',
        'Akuntansi',
        [
          Bab('Profile Program Studi',
              'Program Studi S1 Akuntansi didirikan pada bulan April 1966 di bawah Fakultas Ekonomi dan Bisnis, UPN Veteran Jawa Timur. Dalam perkembangannya, pada tanggal 29 November 1994, berdasarkan Surat Keputusan Bersama Menteri Pendidikan dan Kebudayaan Republik Indonesia dan Menteri Pertahanan Keamanan Republik Indonesia Nomor 0307/0/1994 dan KEP/10/Xl/1994, Program Studi Akuntansi berubah menjadi Perguruan Tinggi Swasta dengan memiliki status akreditasi.\n\nPada tanggal 29 Januari 2009, Program Studi Akuntansi memperoleh Akreditasi A dari BAN-PT Depdiknas Nomor: 039/BANPT/Ak-Xl/S1/l/2009.\n\nSetelah itu, berturut-turut pada tahun 2014 dan 2019, program studi Akuntansi berhasil mempertahankan Akreditasi A dari BAN-PT.'),
          Bab('Visi',
              'Menjadi Jurusan Akuntansi world class Unggul Berkarakter Bela Negara di tahun 2039'),
          Bab('Misi',
              '1. Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional.\n 2. Meningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara.\n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset bidang akuntansi dan kearifan lokal.\n 4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan yang WBK (wilayah bebas korupsi) dan WBBM (wilayah bebas bersih melayani) di Jurusan akuntansi.\n 5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang akuntansi.\n 6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di Jurusan akuntansi.\n 7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri di bidang akuntansi.'),
          Bab('Akreditasi', 'A'),
          Bab('Kaprodi', 'Dr. Tantina Haryati, S.E., M.Aks.'),
          Bab('Dosen', 
              '1. Prof. Dr. Sri Trisnaningsih\n2. Prof. Dr. Indrawati Yuhertiana, MM., Ak. CMA.\n3. Dra. Ec. Anik Yuliati, M.Aks.\n4. Drs. Ec. Muslimin, M.Si.\n5. Drs. Ec. Saiful Anwar, M.Si.'),
          Bab('Laman Resmi', 'https://akuntansi.upnjatim.ac.id/'),
          Bab('Email Prodi',  'mailto:akuntansi@upnjatim.ac.id'),
          Bab('Prestasi Mahasiswa',
              '1. Juara I National Accounting Essay Competition 2022 Komunitas Jago Akuntansi Indonesia (KJAI)\n- Nathanael Hizkia Ritonga (Akuntansi, 2019)\n- Siti Salzabila Faizaroh Aizy (Akuntansi, 2019)\n- Elvita Fitriana Sari (Akuntansi, 2019)\n\n2. Juara I Kompetisi Akuntansi Sebelas Maret (KAS 2022)\n- Nathanael Hizkia Ritonga (Akuntansi, 2019)\n- Siti Salzabila Faizaroh Aizy (Akuntansi, 2019)\n- Rika Rudiatun (Akuntansi, 2019)\n\n3. Juara III National Public Essay Competition Reviresco Reformation XXIX\n- Alfi Ardiyanti (Akuntansi, 2020)'),
        ],
      ),
      Program(
        'MN.jpg',
        'Manajemen',
        [
          Bab('Profile Program Studi',
              'Program Studi S1 Manajemen didirikan pada bulan Maret 1966 di bawah Fakultas Ekonomi dan Bisnis. Program ini secara teratur disebut sebagai program paling favorit dalam bidang studi manajemen ekonomi di Surabaya-Jawa Timur dan diakreditasi oleh BAN-PT (Badan Akreditasi Nasional) dengan status “A” (status luar biasa). \n\n4 Program Konsentrasi\n Manajemen Pemasaran \n\n Kegiatan perencanaan, pengelolaan, penyimpanan, serta pengendalian dana dan aset yang dimiliki suatu perusahaan.\n\n Manajemen Operasional\n Kegiatan perencanaan, pengelolaan, penyimpanan, serta pengendalian dana dan aset yang dimiliki suatu perusahaan.\n\n Manajemen Keuangan\n Kegiatan perencanaan, pengelolaan, penyimpanan, serta pengendalian dana dan aset yang dimiliki suatu perusahaan. \n\n Manajemen SDM (Sumber Daya Manusia)\n Kegiatan perencanaan, pengelolaan, penyimpanan, serta pengendalian dana dan aset yang dimiliki suatu perusahaan.'),
          Bab('Visi',
              'Menjadi salah satu program studi yang unggul dalam pengembangan Ilmu Manajemen yang berkarakter bela negara pada tahun 2024'),
          Bab('Misi',
              '1. Menyelenggarakan pendidikan bidang manejemen yang berkarakter bela negara \n 2. Meningkatkan pengembangan ilmu manajemen melalui kegiatan penelitian\n 3. Melaksanakan pengabdian kepada masyarakat melalui karya inovatif berbasis iptek dan kearifan lokal\n 4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntanbilitas pengelolaan anggaran \n 5. Mengembangkan kualitas sumber manusia unggul dalam sikap dan tata nilai, unjuk rasa, penguasaan pengetahuan dan manajerial \n 6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu \n 7. Membangun jejaring dengan institusi baik nasional dan internasional melalui Implementasi kerjasama.'),
          Bab('Akreditasi', 'Unggul'),
          Bab('Kaprodi', 'Dra. Ec. Nurjanti Takarini, M.Si'),
          Bab('Dosen', 
          '1, Prof. Dr. Ir. Akhmad Fauzi, MMT, CHRA\n2. Prof. Dr. Yuniningsih, SE, M.Si.\n3. Dr. Dhani Ichsanuddin Nur, MM, CFP.\n4. Dra.Ec. Kustini, M.Si, CHRA.\n5. Dr. Drs.Ec. Gendut Sukarno, MS, CHRA'),
          Bab('Laman Resmi', 'https://manajemen.upnjatim.ac.id/'), 
          Bab('Email Prodi',  'mailto:feb@upnjatim.ac.id'),
          Bab('Prestasi Mahasiswa',
              '1. Juara 1 National Economic Business Plan Competition Festival 2022\n- Ikhwanda Haikel Radito (Manajemen, 2020)\n- Gangsar Ragil Tri Waluyo (Manajemen, 2020)\n- Nailatun Ni’mah (Manajemen, 2020)\n- Amanda Okky Wijaya (Manajemen, 2020)\n- Dimas Rangga Dewantara (Manajemen, 2020)\n- Arealdo Robiq Yustiawan (Manajemen, 2020)\n\n2. Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022\n- Akmat Syaifudin (Manajemen, 2020)\n\n3. Juara 2 Lomba Essay tingkat Nasional Kongres dan Konfernas Ikatan Mahasiswa Administrasi Bisnis Indonesia (IMABI)\n- Feri Ardiansyah (Manajemen, 2020)'),
        ],
      ),
      Program(
        'KW.jpg',
        'Kewirausahaan',
        [
          Bab('Profile Program Studi',
              'Pada tahun 2022, Berdasarkan Keputusan Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia Nomor 346/E/0/2022 tentang Izin Pembukaan Program Studi Kewirausahaan Program Sarjana pada Universitas Pembangunan Nasional “Veteran” Jawa Timur, telah dibuka Program Studi Baru Kewirausahaan Fakultas Ekonomi dan Bisnis, dimana calon mahasiswa yang ingin mendaftar pada program studi tersebut sudah dapat dipilih pada saat pendaftaran jalur mandiri.'),
          Bab('Visi',
              'Menjadi program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.'),
          Bab('Misi',
              '1. Menyelenggarakan dan mengembangkan pendidikan di bidang kewirausahaan yang berbasis digital dan berkarakter bela negara.\n 2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat.\n 3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal. \n 4. Menyelenggarakan tata kelola yang baik dan bersih untuk mencapai akuntabilitas pengelolaan anggaran. \n 5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, kompetensi dan manajerial. \n 6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.'),
          Bab('Akreditasi',
              'Belum mendapat akreditasi karena kewirausahaan UPN VETERAN JATIM merupakan prodi baru tahun 2022'),
          Bab('Kaprodi', 'Dr. Hesty Prima Rini, SE., MM'),
          Bab('Dosen', 
              '1. Arief Budiman, S.AB., M.AB., CMA\n2. Devinta Nur Arumsari, S.E., M.E\n3. Egan Evanzha Yudha Amriel, S.Mn., MM\n4. Muhammad Ahmi Husein S.Si., M.Sc\,5. Muhammad Ilham Naufal, S.A, MBA'),
          Bab('Laman Resmi', 'https://kwu.upnjatim.ac.id/'),
          Bab('Email Prodi', 'mailto:feb@upnjatim.ac.id'),
          Bab('Prestasi Mahasiswa',
              '1. Medali perak di kompetisi NASPO (National Applied Science Project Olympiad) 2022\n- Kriska Savriel Brawijaya (Kwu’22)\n- Mochamad Rayhan Dwi Cahyo (Kwu’22)\n- Rayhan Mauli Al Khudry Pradana (Kwu’22)\n- Muhammad Muzakky Abd. Harits (Kwu’22)\n- Amanda Citrani Aji (Kwu’22)\n\n2. Medali perunggu di kompetisi AISEEF (Asean Innovative Science and Enterpreneur Fair) 2023\n- Kriska Savriel Brawijaya (Kwu’22)\n- Mochamad Rayhan Dwi Cahyo (Kwu’22)\n- Rayhan Mauli Al Khudry Pradana (Kwu’22)\n- Muhammad Muzakky Abd. Harits (Kwu’22)\n- Amanda Citrani Aji (Kwu’22)'),
        ],
      ),
      Program(
        'AK2.jpg',
        'Magister Akuntansi',
        [
          Bab('Profile Program Studi',
              'Program Studi Magister Akuntansi Universitas Pembangunan Nasional "Veteran" Jawa Timur berdiri pada tahun 2001 berdasarkan nomor SK Pendirian: Skep/29/VIII/2000 pada tanggal 31 Agustus 2001.\n\nPeringkat (Nilai) Akreditasi Nasional dari Program Magister Akuntansi adalah "Baik Sekali" dengan nomor : 13523/SK/BAN-PT/Akred/M/XII/2021.\n\nPada Maret 2022 Program Magister Akuntansi mendapatkan Akreditasi Intenasional "Foundation for International Business Administration Accreditation (FIBAA)".'),
          Bab('Visi',
              'Menjadi Pusat Pembelajaran Ilmu Akuntansi Jenjang Magister yang Unggul dan Berkarakter Bela Negara Pada tahun 2039'),
          Bab('Misi',
              '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.\n2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS ekonomi dan bisnis.\n3. Menyelenggarakan pengabdian kepada masyarakat melalui penerapan TTG berbasiskearifan lokal.\n4. Menyelenggarakan tata kelola Jurusan yang baik, dan bersih.\n5. Mengembangkan kualitas sumber daya manusia berkarakter bela negara.\n6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di tingkat Jurusan. \n7. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui keunggulan Litdimas.'),
          Bab('Akreditas',
              'Berdasarkan nomor SK Pendirian: Skep/29/VIII/2000 pada tanggal 31 Agustus 2001. Peringkat (Nilai) Akreditasi terakhir adalah “Baik Sekali” dengan nomor: 13523/SK/BAN-PT/Akred/M/XII/2021. Selain itu, Program Magister Akuntansi pada bulan Maret tahun 2022 mendapatkan akreditasi intenasional “Foundation for International Business Administration Accreditation (FIBAA)”.'),
          Bab('Kaprodi', 'Dr. Dra. Ec. Siti Sundari M.Si.'),
          Bab('Dosen', '1. Prof. Dr. Soeprian Pranoto, MM., Ak., CA.\n2. Prof. Dr. Sri Trisnaningsih, MSi., Dra., Ec.\n3.Prof. Dr. Indrawati Yuhertiana, MM., Ak., CA, CPAI., CMA.\n4. Dr. Hero Priono, M.Si., Drs., Ec., Ak., CA., CMA.\n5. Dr. Gideon Setyo Budiwicaksono, M.Si., Drs., Ec. CfrA'),
          Bab('Laman Resmi', 'https://mak.upnjatim.ac.id/'),
          Bab('Email Prodi', 'mailto:pasca@upnjatim.ac.id'),
          Bab('Prestasi Mahasiswa', '-'),
        ],
      ),
    ];
  }
}

class Bab {
  final String title;
  final String description;

  Bab(this.title, this.description);
}