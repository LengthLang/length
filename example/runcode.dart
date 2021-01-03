import 'dart:io';

import 'package:length/length.dart';

main(List<String> args) {
  Length(File('./helloworld.len')).run(false);
}
