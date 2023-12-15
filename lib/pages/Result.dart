import 'package:flutter/material.dart';
import 'package:skoring/components/CartPie.dart';

class ResultPage extends StatefulWidget {
  final Map dataResult;
  const ResultPage({super.key, required this.dataResult});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hasil Skoring',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${widget.dataResult['pemohon']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                '${widget.dataResult['perusahaan']}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: widget.dataResult['rekapResult']['analiticItem'] ==
                            'Layak'
                        ? Colors.green
                        : widget.dataResult['rekapResult']['analiticItem'] ==
                                'Layak dengan Catatan'
                            ? const Color.fromARGB(255, 151, 113, 0)
                            : Colors.red),
                child: Text(
                  widget.dataResult['rekapResult']['analiticItem'],
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Text(
                '${widget.dataResult['rekapResult']['finalValue']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(width: 400, height: 400, child: CartPie())
            ],
          ),
        ),
      )),
    );
  }
}
