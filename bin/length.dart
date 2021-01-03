import 'dart:io';

import 'package:length/length.dart';
import 'package:args/args.dart';

void main(List<String> arguments) {
  exitCode = 0;
  // if (arguments.length != 1) {
  //   print('Usage: lines <filename>');
  //   exit(1);
  // }
  final parser = ArgParser()..addFlag('verbose', abbr: 'v');
  final result = parser.parse(arguments);
  var file = File(result.rest.first);
  if (result['verbose'] as bool) {
    print(result.rest.first);
  }
  try {
    Length(file).run(result['verbose'] as bool);
  } catch (e) {
    print((e as ArgumentError).message);
    exitCode = 2;
  }
}
