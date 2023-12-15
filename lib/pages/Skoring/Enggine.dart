import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:skoring/components/Helpers.dart';
import 'package:skoring/components/ToastAlert.dart';
import 'package:skoring/repository/localDatabase.dart';

class EnginePage extends StatefulWidget {
  final String pemohon;
  final String perusahaan;
  const EnginePage(
      {super.key, required this.pemohon, required this.perusahaan});

  @override
  State<EnginePage> createState() => _EnginePageState();
}

class _EnginePageState extends State<EnginePage> {
  final List<Map<String, dynamic>> categories = [
    {
      'id': 1,
      'label': 'Character',
      'dimensions': [1, 2],
      'maxScore': 27
    },
    {
      'id': 2,
      'label': 'Capacity',
      'dimensions': [3, 4],
      'maxScore': 24
    },
    {
      'id': 3,
      'label': 'Capital',
      'dimensions': [5],
      'maxScore': 18
    },
    {
      'id': 4,
      'label': 'Collateral',
      'dimensions': [6],
      'maxScore': 19
    },
    {
      'id': 5,
      'label': 'Condition Of Economy',
      'dimensions': [7, 8],
      'maxScore': 12
    },
  ];
  final List<Map<String, dynamic>> data = [
    {
      "questions": "Penilaian masyarakat sekitar terhadap calon debitur",
      "maxScore": 4,
      "dimensiId": 1,
      "options": [
        {"label": 'Baik', "value": 100},
        {"label": 'Cukup', "value": 50},
        {"label": 'Kurang', "value": 0},
      ]
    },
    {
      "questions": "Sikap calon debitur",
      "dimensiId": 1,
      "maxScore": 5,
      "options": [
        {"label": 'Kooperatif', "value": 100},
        {"label": 'Cukup Kooperatif', "value": 50},
        {"label": 'Kurang Kooperatif', "value": 0},
      ]
    },
    {
      "questions": "Karakter berdasarkan catatan SLIK",
      "dimensiId": 1,
      "maxScore": 6,
      "options": [
        {
          "label": 'Tidak pernah tercatat sebagai debitur bermasalah',
          "value": 100
        },
        {
          "label": 'Pernah/sedang tercatat sebagai debitur bermasalah',
          "value": 0
        },
      ]
    },
    {
      "questions":
          "Karakter berdasarkan trade checking & atau catatan kepolisian",
      "dimensiId": 1,
      "maxScore": 6,
      "options": [
        {"label": 'Tidak pernah bermasalah dengan mitra bisnis', "value": 100},
        {"label": 'Kadang bermasalah dengan mitra bisnis', "value": 50},
        {"label": 'Pernah/sedang bermasalah dengan mitra bisnis', "value": 0},
      ]
    },
    {
      "questions": "Harmonisasi hubungan keluarga",
      "maxScore": 4,
      "dimensiId": 1,
      "options": [
        {"label": 'Satu istri/suami', "value": 100},
        {"label": 'Pernah pisah ranjang ', "value": 30},
        {"label": 'Sedang /sering kawin - cerai', "value": 0},
      ]
    },
    {
      "questions":
          "Lain-lain charakter yang di anggap berpengaruh terhadap keamanan pinjaman bank",
      "dimensiId": 2,
      "maxScore": 2,
      "options": [
        {"label": 'Baik', "value": 100},
        {"label": 'Cukup', "value": 50},
        {"label": 'Kurang', "value": 0},
      ]
    },
    {
      "questions": "Lama usaha sejak didirikan hingga saat ini",
      "dimensiId": 3,
      "maxScore": 3,
      "options": [
        {"label": 'Lebih dari 2 tahun', "value": 100},
        {"label": '2 tahun', "value": 50},
        {"label": 'Kurang dari 2 tahun', "value": 0},
      ]
    },
    {
      "questions":
          "Memiliki   catatan-catatan   usaha (catatan hutang piutang, pembelian, persediaan dll)",
      "dimensiId": 4,
      "maxScore": 2,
      "options": [
        {"label": 'Ya', "value": 100},
        {"label": 'Sebagian', "value": 50},
        {"label": 'Tidak', "value": 0},
      ]
    },
    {
      "questions":
          "Rata-rata jumlah pelanggan tetap yang dimiliki setiap bulannya (orang)",
      "dimensiId": 4,
      "maxScore": 3,
      "options": [
        {"label": '>100', "value": 100},
        {"label": '50-100', "value": 50},
        {"label": '<50', "value": 0},
      ]
    },
    {
      "questions": "Rata-rata pendapatan setiap bulannya",
      "dimensiId": 4,
      "maxScore": 4,
      "options": [
        {"label": '> 3 Juta', "value": 100},
        {"label": '2-3 Juta', "value": 75},
        {"label": '1-2 Juta', "value": 50},
        {"label": '<1 Juta', "value": 0},
      ]
    },
    {
      "questions": "Jumlah   pesaing   untuk   produk sejenis",
      "dimensiId": 4,
      "maxScore": 4,
      "options": [
        {"label": 'Tidak Ada', "value": 100},
        {"label": 'Ada beberapa', "value": 50},
        {"label": 'Ada banyak', "value": 0},
      ]
    },
    {
      "questions": "Aset   usaha   lebih   besar   dari jumlah pinjaman",
      "dimensiId": 4,
      "maxScore": 3,
      "options": [
        {"label": 'Lebih besar dari Jumlah Pinjaman', "value": 100},
        {"label": 'Sama dengan Jumlah Pinjaman', "value": 50},
        {"label": 'Lebih Kecil dari Jumlah Pinjaman', "value": 0},
      ]
    },
    {
      "questions": "Jangkauan   wilayah   pemasaran produk",
      "dimensiId": 4,
      "maxScore": 3,
      "options": [
        {"label": 'Ekspor,Regional & Lokal', "value": 100},
        {"label": 'Ekspor & Regional', "value": 80},
        {"label": 'Regional & Lokal', "value": 75},
        {"label": 'Lokal', "value": 60},
      ]
    },
    {
      "questions": "Status pemohon dalam perusahaan",
      "dimensiId": 4,
      "maxScore": 2,
      "options": [
        {"label": 'Direktur', "value": 100},
        {"label": 'Kuasa Direktur', "value": 0},
      ]
    },
    {
      "questions": "Jumlah  modal  usaha  selain  dari pinjaman",
      "dimensiId": 5,
      "maxScore": 6,
      "options": [
        {"label": 'Lebih dari 30% modal milik sendiri', "value": 100},
        {"label": 'Sama dengan 30% modal milik sendiri', "value": 50},
        {"label": 'Kurang dari 30% modal milik sendiri', "value": 0},
      ]
    },
    {
      "questions": "Apakah tidak mempunyai hutang di tempat lain ?",
      "dimensiId": 5,
      "maxScore": 4,
      "options": [
        {"label": 'Ya', "value": 100},
        {"label": 'Tidak', "value": 0},
      ]
    },
    {
      "questions": "Trend pertumbuhan modal perusahaan 3 tahun terakhir",
      "dimensiId": 5,
      "maxScore": 4,
      "options": [
        {"label": 'Meningkat', "value": 100},
        {"label": 'Tetap', "value": 50},
        {"label": 'Berkurang', "value": 0},
      ]
    },
    {
      "questions": "ROE bulan berjalan",
      "dimensiId": 5,
      "maxScore": 4,
      "options": [
        {"label": '< 0%', "value": 0},
        {"label": '< 3%', "value": 30},
        {"label": '< 7%', "value": 50},
        {"label": '< 10%', "value": 75},
        {"label": '>= 10%', "value": 100},
      ]
    },
    {
      "questions": "Status kepemilikan  agunan",
      "dimensiId": 6,
      "maxScore": 5,
      "options": [
        {"label": 'Milik Sendiri', "value": 100},
        {"label": 'Milik Bersama', "value": 90},
        {"label": 'Milik Orang tua kandung', "value": 80},
        {"label": 'Milik mertua', "value": 80},
        {"label": 'Milik anak kandung', "value": 80},
        {"label": 'Milik saudara kandung', "value": 70},
        {"label": 'Milik Ipar kandung', "value": 50},
        {"label": 'Milik sendiri dan beberapa orang', "value": 30},
        {
          "label": 'Milik orang lain yang tidak miliki hubungan kekerabatan',
          "value": 0
        },
        {"label": 'Tanpa agunan', "value": 0}
      ]
    },
    {
      "questions":
          "Besaran  nilai taksasi jaminan sebanding dengan besarnya agunan",
      "dimensiId": 6,
      "maxScore": 4,
      "options": [
        {"label": 'CEV lebih dari 110%', "value": 100},
        {"label": 'CEV antara 100-110%', "value": 70},
        {"label": 'CEV 80-100%', "value": 50},
        {"label": 'CEV kurang dari 80%', "value": 0}
      ]
    },
    {
      "questions": "Jenis & jumlah ragam agunan",
      "dimensiId": 6,
      "maxScore": 3,
      "options": [
        {"label": 'Tanah dan bangunan', "value": 100},
        {"label": 'Tanah kosong', "value": 90},
        {"label": 'Kendaraan', "value": 40},
        {"label": 'Lebih dari 1 agunan tanah', "value": 100},
        {"label": 'Lebih dari 1 agunan tanah & kendaraan', "value": 80},
        {"label": 'Lebih dari 1 agunan kendaraan', "value": 50},
      ]
    },
    {
      "questions": "Status agunan & obyek usaha yang dibiayai",
      "dimensiId": 6,
      "maxScore": 4,
      "options": [
        {
          "label": 'Agunan menjadi satu dengan obyek usaha yang dibiayai ',
          "value": 100
        },
        {
          "label":
              'Agunan tidak menjadi satu dengan obyek usaha yang dibiayai ',
          "value": 0
        },
      ]
    },
    {
      "questions": "Lokasi agunan",
      "dimensiId": 6,
      "maxScore": 3,
      "options": [
        {"label": 'Di tengah kota dan pusat niaga', "value": 100},
        {"label": 'Di pinggiran kota dan berdekatan daerah niaga', "value": 80},
        {"label": 'Di luar kota dan jauh daerah niaga', "value": 50},
        {"label": 'Kurang dari atau sama dengan 1 tahun', "value": 100},
        {"label": 'Lebih dari 1 hingga 3 tahun', "value": 80},
        {"label": 'Lebih dari 3 tahun', "value": 50},
      ]
    },
    {
      "questions": "Nilai pasar dari produk obyek usaha yang dibiayai",
      "dimensiId": 7,
      "maxScore": 2,
      "options": [
        {"label": 'Bernilai ekonomis tinggi', "value": 100},
        {"label": 'Bernilai ekonomis standar', "value": 50},
      ]
    },
    {
      "questions":
          "Animo permintaan pasar global terhadap produk usaha yang di biayai",
      "dimensiId": 7,
      "maxScore": 3,
      "options": [
        {"label": 'Meningkat', "value": 100},
        {"label": 'Tetap', "value": 50},
      ]
    },
    {
      "questions": "Trend pertumbuhan laba usaha 3 tahun terakhir",
      "dimensiId": 8,
      "maxScore": 3,
      "options": [
        {"label": 'Meningkat', "value": 100},
        {"label": 'Tetap', "value": 50},
      ]
    },
    {
      "questions": "Animo permintaan pasar akan obyek usaha yang di biayai",
      "dimensiId": 8,
      "maxScore": 3,
      "options": [
        {"label": 'Meningkat', "value": 100},
        {"label": 'Tetap', "value": 50},
      ]
    },
    {
      "questions":
          "Legalitas usaha yang dibiayai dibuktikan dengan kelengkapan ijin usaha",
      "dimensiId": 8,
      "maxScore": 3,
      "options": [
        {"label": 'Meningkat', 'value': 100},
        {"label": 'Tetap', 'value': 50},
      ]
    },
  ];
  Map rekapResult = {};
  late List<dynamic> selectedOptions;
  List<dynamic> resultData = [];

  int viewMode = 1;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    selectedOptions = List.filled(data.length, null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: viewMode == 1
                  ? Column(
                      children: [
                        for (var i = 0; i < data.length; i++)
                          QuestionCard(
                            questionData: data[i],
                            selectedOption: selectedOptions[i],
                            onOptionChanged: (value) {
                              setState(() {
                                selectedOptions[i] = value;
                              });
                            },
                          ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () async {
                              for (var i = 0; i < selectedOptions.length; i++) {
                                var thisItem = selectedOptions[i]['value'];
                                var thisData = data[i];

                                var value = thisItem;
                                var maxScore = thisData['maxScore'];
                                var finalValue = (value * maxScore) / 100;

                                var analiticItem = finalValue == maxScore
                                    ? 'Baik'
                                    : finalValue == 0
                                        ? 'Tidak Baik'
                                        : 'Kurang Baik';

                                thisData['value'] = value;
                                thisData['finalValue'] = finalValue;
                                thisData['analiticItem'] = analiticItem;
                                thisData['id'] = i + 1;
                              }
                              List<Map<String, dynamic>> updatedList = data
                                  .map((obj) => {...obj}..remove('options'))
                                  .toList();
                              //menghitun per kategori
                              double totalValue = 0;
                              categories.map((x) {
                                double totalAmount = updatedList
                                    .where((obj) => x['dimensions']
                                        .contains(obj['dimensiId']))
                                    .fold(
                                        0,
                                        (sum, obj) =>
                                            sum +
                                            (obj['finalValue'] as double));
                                totalValue = totalValue + totalAmount;
                                var maxScore = x['maxScore'];
                                var analiticItem = totalAmount == maxScore
                                    ? 'Layak'
                                    : totalAmount >= maxScore / 2
                                        ? 'Layak dengan Catatan'
                                        : 'Tidak Layak';

                                if (x["id"] == 1) {
                                  List<Map<String, dynamic>> result =
                                      updatedList
                                          .where((obj) =>
                                              [3, 4].contains(obj['id']))
                                          .toList();

                                  bool allAmountsAreZero = result.every((obj) =>
                                      (obj['finalValue'] as double) == 0.0);
                                  if (allAmountsAreZero) {
                                    analiticItem = 'Tidak Layak';
                                  }
                                }
                                x['finalValue'] = totalAmount;
                                x['analiticItem'] = analiticItem;
                              }).toList();

                              //rekap
                              bool hasZeroAmount = categories.any((obj) =>
                                  obj['analiticItem'] == 'Tidak Layak');
                              String analiticItem = 'Tidak Layak';

                              if (!hasZeroAmount) {
                                if (totalValue.abs() == 100) {
                                  analiticItem = 'Layak';
                                } else {
                                  analiticItem = 'Layak dengan Catatan';
                                }
                              }
                              rekapResult['analiticItem'] = analiticItem;
                              rekapResult['finalValue'] = totalValue.abs();

                              //save to loca
                              LocalDatabase localDatabase = LocalDatabase();
                              Map dataSend = {
                                "pemohon": widget.pemohon,
                                "perusahaan": widget.perusahaan,
                                "itemResult": updatedList,
                                'categoriesResult': categories,
                                'rekapResult': rekapResult,
                              };
                              final insertData =
                                  await localDatabase.addToDb(dataSend);
                              if (insertData) {
                                successAlert('Berhasil Memproses');
                                setState(() {
                                  viewMode = 2;
                                  resultData = updatedList;
                                });
                                _scrollController.animateTo(
                                  0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Text('Simpan'))
                      ],
                    )
                  : Column(
                      children: [
                        const Text(
                          'Hasil Skoring',
                          style: TextStyle(fontSize: 20),
                        ),
                        Divider(),
                        Text(
                          rekapResult['analiticItem'],
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Total Nilai : ${rekapResult['finalValue']} || Nilai Maksimal : 100",
                          style: TextStyle(fontSize: 16),
                        ),
                        for (var i = 0; i < categories.length; i++)
                          ResultCategoriesCard(
                            questionData: categories[i],
                          ),
                        Divider(),
                        for (var i = 0; i < resultData.length; i++)
                          ResultCard(
                            questionData: resultData[i],
                          ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                viewMode = 1;
                              });
                              _scrollController.animateTo(
                                0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Text('Kembali'))
                      ],
                    )),
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final Map<String, dynamic> questionData;
  final dynamic selectedOption;
  final Function(dynamic)? onOptionChanged;

  const QuestionCard({
    Key? key,
    required this.questionData,
    required this.selectedOption,
    this.onOptionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionData['questions'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            for (var option in questionData['options']) buildOptionRow(option),
          ],
        ),
      ),
    );
  }

  Widget buildOptionRow(Map<String, dynamic> option) {
    return Row(
      children: [
        Radio(
          value: option,
          groupValue: selectedOption,
          onChanged: (value) {
            onOptionChanged?.call(value);
          },
        ),
        Expanded(
          child: Text(
            '${option['label']}',
            style: TextStyle(overflow: TextOverflow.clip),
          ),
        ),
      ],
    );
  }
}

class ResultCard extends StatelessWidget {
  final Map<String, dynamic> questionData;

  const ResultCard({
    Key? key,
    required this.questionData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                labelCharacter(questionData['dimensiId']),
                                style: const TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[800],
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                labelDimensi(questionData['dimensiId']),
                                style: const TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
              Text(
                questionData['questions'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nilai : ${questionData['value']}'),
                      Text('Skor Maksimal : ${questionData['maxScore']}'),
                      Text('Nilai Final : ${questionData['finalValue']}'),
                    ],
                  ),
                  Container(
                    child: Text(questionData['analiticItem']),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultCategoriesCard extends StatelessWidget {
  final Map<String, dynamic> questionData;

  const ResultCategoriesCard({
    Key? key,
    required this.questionData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionData['label'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Skor Maksimal : ${questionData['maxScore']}'),
                      Text('Nilai Final : ${questionData['finalValue']}'),
                    ],
                  ),
                  Container(
                    child: Text(questionData['analiticItem']),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
