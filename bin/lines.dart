import 'dart:io';

import 'package:lines/lines.dart';

void main(List<String> arguments) {
  if (arguments.length != 1) {
    print('Usage: lines <filename>');
    exit(1);
  }

  var file = File(arguments[0]);
  if (DEBUG) {
    print(arguments[0]);
  }
  Lines(file).run();
}
