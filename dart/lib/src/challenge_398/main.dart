import 'dart:io';
import 'dart:math';

import 'package:path/path.dart' as path;

final fileMtx5 = path.join(
    Directory.current.path, 'assets', 'challenge_398', 'matrix_5x5.txt');
final fileMtx20 = path.join(
    Directory.current.path, 'assets', 'challenge_398', 'matrix_20x20.txt');

typedef Matrix<T> = List<List<T>>;

void main() async {
  var fileToUse = fileMtx5;
  var mtx = await getMatrixFromFile(fileToUse);

  optimalSum(mtx);
}

Future<Matrix<int>> getMatrixFromFile(String filename) async {
  var file = File(filename);
  var lines = await file.readAsLines();

  var matrix = lines
      .map((line) =>
          line.split(RegExp('\\s+')).map((e) => int.parse(e)).toList())
      .toList();

  return matrix;
}

void optimalSum(Matrix<int> mtx) {
  var rows = mtx.length;
  var cols = mtx[0].length;

  Matrix<bool> starred = List.filled(rows, List.filled(cols, false));

  print(mtx);

  for (var i = 0; i < rows; i++) {
    var rowMin = mtx[i].reduce(min);
    for (var j = 0; j < cols; j++) {
      mtx[i][j] -= rowMin;
    }
  }

  for (var i = 0; i < rows; i++) {
    for (var j = 0; j < cols; j++) {
      
    }
  }

  print(mtx);
}

List<int> getColumn(List<List<int>> mtx, int i) {
  return mtx.map((e) => e[i]).toList();
}

Matrix removeColumn(Matrix mtx, int i) {
  return mtx.map((e) {
    var row = List<int>.from(e);
    row.remove(i);
    return row;
  }).toList();
}
