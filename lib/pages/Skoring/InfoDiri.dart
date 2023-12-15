import 'package:flutter/material.dart';
import 'package:skoring/pages/Skoring/Enggine.dart';
import 'package:skoring/repository/localDatabase.dart';

class InfoDiri extends StatefulWidget {
  const InfoDiri({super.key});

  @override
  State<InfoDiri> createState() => _InfoDiriState();
}

class _InfoDiriState extends State<InfoDiri> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController pemohonController = TextEditingController();
  TextEditingController perusahaanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Skoring App',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'Data Diri',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Lengkapi data diri Anda untuk meningkatkan peluang persetujuan kredit Anda. Informasi lengkap membantu kami memberikan penilaian yang lebih akurat",
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: pemohonController,
                    decoration: InputDecoration(
                        labelText: 'Nama Pemohon',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama Pemohon harus diisi';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: perusahaanController,
                    decoration: InputDecoration(
                        labelText: 'Nama Perusahaan',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama Perusahaan harus diisi';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          )
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EnginePage(
                          pemohon: pemohonController.text,
                          perusahaan: perusahaanController.text)));
            }
          },
          child: const Center(
            child: Text(
              'Mulai',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
