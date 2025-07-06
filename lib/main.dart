import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Mahasiswa'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images.jpg',
              ), // ganti dengan foto lokal
            ),
            SizedBox(height: 20),
            Text(
              'Ahmad Naufal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('NIM: 60200122011'),
            Text('Jurusan: Teknik Informatika'),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('0812-3456-7890'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('naufal@gmail.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
