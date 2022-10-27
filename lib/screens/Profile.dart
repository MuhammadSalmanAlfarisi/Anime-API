import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> _anggota = <Widget>[
    Text("MMuhammad Salman Alfarisi [21120120120001]"),
    Text("Muhammad Dhiva Pradigta [21120120140054]"),
    Text("Muhammad Yahya Oktariansyah [21120120140037]"),
    Text("Athallah Dwi Rahadianto [21120120130122]"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/MyAnimeList_Logo.jpeg'))),
          ),
          SizedBox(height: 20),
          Text(
            "Kelompok 3 MDP",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
              child: ListView.separated(
            itemCount: _anggota.length,
            itemBuilder: (BuildContext context, int index) {
              return _anggota.elementAt(index);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              thickness: 2,
            ),
          ))
        ],
      ),
    );
  }
}
