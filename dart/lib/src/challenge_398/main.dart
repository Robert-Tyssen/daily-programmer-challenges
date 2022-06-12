import 'dart:io';

import 'package:path/path.dart' as path;

final fileMtx5 = path.join(
    Directory.current.path, 'assets', 'challenge_398', 'matrix_5x5.txt');
final fileMtx20 = path.join(
    Directory.current.path, 'assets', 'challenge_398', 'matrix_20x20.txt');

void main() async {
  var fileToUse = fileMtx5;
  var matrix = getMatrixFromFile(fileToUse);
}

Future<List<List<int>>> getMatrixFromFile(String filename) async {
  var file = File(filename);
  var lines = await file.readAsLines();

  var matrix = lines
      .map((line) => line.split(' ').map((e) => int.parse(e)).toList())
      .toList();

  return matrix;
}

