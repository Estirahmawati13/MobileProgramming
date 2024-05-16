import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';
import 'pasien_detail.dart';

class PagePasien extends StatefulWidget {
  const PagePasien({super.key});

  @override
  _PagePasienState createState() => _PagePasienState();
}

class _PagePasienState extends State<PagePasien> {
  final List<Pasien> _pasien = [
    Pasien(
      id: 1,
      nomor_rm: '01',
      nama: 'Aulia Bunga Cahyani',
      tanggal_lahir: '2003-10-10',
      nomor_telepon: 088833743212,
      alamat: 'Boyolali',
    ),
    Pasien(
      id: 2,
      nomor_rm: '02',
      nama: 'Atika Fithriya Tsabita',
      tanggal_lahir: '2000-01-27',
      nomor_telepon: 085670899801,
      alamat: 'Yogyakarta',
    ),
    Pasien(
      id: 3,
      nomor_rm: '03',
      nama: 'Alvaro Dzakiandra Fauzan',
      tanggal_lahir: '2003-07-08',
      nomor_telepon: 085620200128,
      alamat: 'Sleman',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Data Pasien",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: _pasien.length,
        itemBuilder: (context, Index) {
          return Card(
              child: ListTile(
            title: Text(_pasien[Index].nama),
            subtitle: Text('No.rm : ${_pasien[Index].nomor_rm}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: _pasien[Index]),
                ),
              );
            },
          ));
        },
      ),
    );
  }
}
