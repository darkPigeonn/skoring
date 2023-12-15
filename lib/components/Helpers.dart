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
final List<Map<String, dynamic>> dimension = [
  {
    'id': 1,
    'label': 'Dimensi Kepribadian / Integritas',
    'categories': 1,
    'maxScore': 27
  },
  {
    'id': 2,
    'label': 'Dimensi Charakter lain, selain point a-e',
    'categories': 1,
    'maxScore': 24
  },
  {'id': 3, 'label': 'Dimensi lama usaha', 'categories': 2, 'maxScore': 18},
  {'id': 4, 'label': 'Dimensi Catatan Usaha', 'categories': 2, 'maxScore': 19},
  {'id': 5, 'label': '-', 'categories': 3, 'maxScore': 12},
  {'id': 6, 'label': 'Agunan', 'categories': 4, 'maxScore': 12},
  {
    'id': 7,
    'label': 'Kondisi Genaral yang bersifat Global',
    'categories': 5,
    'maxScore': 12
  },
  {
    'id': 8,
    'label': 'Kondisi ekonomi yang bersifat khusus',
    'categories': 5,
    'maxScore': 12
  },
];

String labelDimensi(id) {
  print(id);
  String label = '-';
  var dataSearch = dimension
      .firstWhere((element) => element["id"].toString() == id.toString());
  print(dataSearch);
  if (dataSearch.isNotEmpty) {
    label = dataSearch['label'];
  }
  return label;
}

String labelCharacter(id) {
  print(id);
  String label = '-';
  var dataSearch =
      categories.firstWhere((element) => element["dimensions"].contains(id));
  print(dataSearch);
  if (dataSearch.isNotEmpty) {
    label = dataSearch['label'];
  }
  return label;
}
