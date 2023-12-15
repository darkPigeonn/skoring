import 'package:flutter/material.dart';
import 'package:skoring/components/ButtonInkwell.dart';
import 'package:skoring/pages/Result.dart';
import 'package:skoring/pages/Skoring/Enggine.dart';
import 'package:skoring/pages/Skoring/InfoDiri.dart';
import 'package:skoring/repository/localDatabase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LocalDatabase localDatabase = LocalDatabase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: new EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                'Skoring  Apps',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quote',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Orang bodohpun dapat meminjamkan uang,namun dibutuhkan keterampilan untuk menagihnya kembali',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        children: const [
                          CustomButton(
                            icon: Icons.book,
                            label: 'Prinsip',
                          ),
                          CustomButton(
                            icon: Icons.bookmark,
                            label: 'Kelayakan',
                          ),
                          CustomButton(
                            icon: Icons.insert_drive_file,
                            label: '5C & 7P',
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Daftar Skoring',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Hasil Skoring Analisi Kelayakan Kredit',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    FutureBuilder(
                      future: localDatabase.getDataSkoring(),
                      builder: (
                        BuildContext context,
                        AsyncSnapshot snapshot,
                      ) {
                        List<Widget> children;
                        if (snapshot.hasData) {
                          final data = snapshot.data;

                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: 240,
                            child: ListView.builder(
                                itemCount: data.length,
                                itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ResultPage(
                                                      dataResult: data[index],
                                                    )));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 49, 0, 141),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  data[index]['pemohon'],
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  data[index]['perusahaan'],
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: data[index][
                                                                  'rekapResult']
                                                              [
                                                              'analiticItem'] ==
                                                          'Layak'
                                                      ? Colors.green
                                                      : data[index]['rekapResult']
                                                                  [
                                                                  'analiticItem'] ==
                                                              'Layak dengan Catatan'
                                                          ? const Color
                                                              .fromARGB(
                                                              255, 151, 113, 0)
                                                          : Colors.red),
                                              child: Text(
                                                data[index]['rekapResult']
                                                    ['analiticItem'],
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                          );
                        } else if (snapshot.hasError) {
                          children = <Widget>[
                            const Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('Error: ${snapshot.error}'),
                            ),
                          ];
                        } else {
                          children = const <Widget>[
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: CircularProgressIndicator(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('Awaiting result...'),
                            ),
                          ];
                        }
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: children,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InfoDiri()));
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
