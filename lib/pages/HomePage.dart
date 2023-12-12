import 'package:flutter/material.dart';
import 'package:skoring/pages/Enggine.dart';
import 'package:skoring/utils/databaseConnections.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skoring Apps'),
      ),
      body: Container(
        margin: new EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Text(
                'Skoring  Kelayakan Kredit',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnginePage()));
                  },
                  child: Text('Start'))
            ],
          ),
        ),
      ),
      // body: FutureBuilder(
      //     future: MongoDatabase.getDocuments(),
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.waiting) {
      //         return Container(
      //           color: Colors.white,
      //           child: const LinearProgressIndicator(
      //             backgroundColor: Colors.black,
      //           ),
      //         );
      //       } else {
      //         if (snapshot.hasError) {
      //           return Container(
      //             color: Colors.white,
      //             child: Center(
      //               child: Text(
      //                 'Something went wrong, try again.',
      //                 style: Theme.of(context).textTheme.headline6,
      //               ),
      //             ),
      //           );
      //         } else {
      //           return ListView.builder(
      //             itemBuilder: (context, index) {
      //               return Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(snapshot.data![index]['name'].toString()));
      //             },
      //             itemCount: snapshot.data!.length,
      //           );
      //         }
      //       }
      //     }),
    );
  }
}
