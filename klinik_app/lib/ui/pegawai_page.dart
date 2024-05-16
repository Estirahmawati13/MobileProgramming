import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PagePegawai extends StatefulWidget {
  const PagePegawai({super.key});
  @override
  _PagePegawaiState createState() => _PagePegawaiState();
}

class _PagePegawaiState extends State<PagePegawai> {
  final List<Pegawai> _pegawai = [
    Pegawai(
      id: 1,
      nip: '12220023',
      nama: 'Adelia Putri Maharani',
      tanggal_lahir: '2004-07-04',
      nomor_telepon: 085654880112,
      email: 'adeliaputri@gmail.com',
      password: 'delia103',
    ),
    Pegawai(
      id: 2,
      nip: '12229873',
      nama: 'Chiara Murthi Rahmadira',
      tanggal_lahir: '2002-10-12',
      nomor_telepon: 085876433212,
      email: 'chiaraa@gmail.com',
      password: 'aramur12',
    ),
    Pegawai(
      id: 3,
      nip: '19212013',
      nama: 'Arlin Nur Adhiatama',
      tanggal_lahir: '2002-07-08',
      nomor_telepon: 085814223099,
      email: 'Adhiatama@gmail.com',
      password: 'Arlinurc32',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Data Pegawai",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: _pegawai.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(_pegawai[index].nama),
            subtitle: Text('nip : ${_pegawai[index].nip}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: _pegawai[index]),
                ),
              );
            },
          ));
        },
      ),
    );
  }
}
