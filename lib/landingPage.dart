import 'package:flutter/material.dart';
import 'package:tugas1_tpm/constanta/text.dart';
import 'constanta/colors.dart';

class LandingPage extends StatelessWidget {
  static const routeName = "/LandingPage";
  @override
  Widget build(BuildContext context) {
    Widget _judul() {
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
        child: Text(
          'Data Anggota',
          style: TextStyle(
              color: tPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 24),
        ),
      );
    }

    Widget dataKelompok() {
      return ListView(
        padding: const EdgeInsets.all(8),
        children: [
          _judul(),
          ListTile(
              title: Text(
                tNama1,
                style: TextStyle(fontSize: 19),
              ),
              subtitle: Text(
                tNIM1,
                style:
                TextStyle(color: tPrimaryColor, fontSize: 16),
              )),
          ListTile(
              title: Text(
                tNama2,
                style: TextStyle(fontSize: 19),
              ),
              subtitle: Text(
                tNIM2,
                style:
                TextStyle(color: tPrimaryColor, fontSize: 16),
              )),
        ],
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      // ),
      body: dataKelompok(),
    );
  }
}
