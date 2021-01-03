import 'dart:io';

import 'package:stack/stack.dart';

/// The interpreter for the Lines esolang
class Length {
  /// Contains the program as a list of line lengths
  List<int> _program;

  /// Contains the stack. The only data structure in Lines is an int
  Stack<int> _stack;

  /// Loads a program from a file
  Length(File program) {
    _program = [];
    _stack = Stack();
    for (var line in program.readAsLinesSync()) {
      _program.add(line.length);
    }
  }

  /// Runs the program
  void run(bool debug) {
    for (var i = 0; i < _program.length; i++) {
      var instruction = _program[i];
      if (debug) {
        stdout.write('(${i + 1})');
      }
      switch (instruction) {
        // addition
        case 10:
          if (debug) {
            print('add');
          }
          if (_stack.length < 2) {
            throw ArgumentError('Stack underflow at line ${i}');
          }

          var num1 = _stack.pop();
          var num2 = _stack.pop();
          _stack.push(num1 + num2);
          break;
        // subtraction
        case 11:
          if (debug) {
            print('sub');
          }
          if (_stack.length < 2) {
            throw ArgumentError('Stack underflow at line ${i}');
          }

          var num1 = _stack.pop();
          var num2 = _stack.pop();
          _stack.push(num2 - num1);
          break;
        // multiplication
        case 20:
          if (debug) {
            print('mul');
          }
          if (_stack.length < 2) {
            throw ArgumentError('Stack underflow at line ${i}');
          }

          var num1 = _stack.pop();
          var num2 = _stack.pop();
          _stack.push(num1 * num2);
          break;
        // division
        case 21:
          if (debug) {
            print('div');
          }
          if (_stack.length < 2) {
            throw ArgumentError('Stack underflow at line ${i}');
          }
          var num1 = _stack.pop();
          var num2 = _stack.pop();
          _stack.push(num2 / num1 as int);
          break;
        // Output as number
        case 15:
          if (debug) {
            print('outn::::::::::');
          }
          if (_stack.length < 1) {
            throw ArgumentError('Stack underflow at line ${i}');
          }
          stdout.write(_stack.pop());
          break;
        // Output as ASCII
        case 16:
          if (debug) {
            print('outa:::::::::');
          }
          if (_stack.length < 1) {
            throw ArgumentError('Stack underflow at line ${i}');
          }
          stdout.write(String.fromCharCode(_stack.pop()));
          break;
        // Push
        case 25:
          if (debug) {
            print('push');
          }
          _stack.push(_program[++i]);
          break;
        // conditional
        case 13:
          if (debug) {
            print('cond');
          }
          if (_stack.length < 1) {
            throw ArgumentError('Stack underflow at line ${i}');
          }
          if (_stack.pop() == 0) {
            i++;
            if ([14, 25].contains(_program[i])) {
              i++;
            }
          }
          break;
        // Goto (Line under)
        case 14:
          if (debug) {
            print('gotou');
          }
          i = _program[i + 1] - 1;
          if (debug) {
            print('pc = ${i}');
          }
          break;
        // Goto (Top of stack)
        case 24:
          if (debug) {
            print('gotos');
          }
          if (_stack.length < 1) {
            throw ArgumentError('Stack underflow at line ${i}');
          }
          i = _stack.pop();
          if (debug) {
            print('pc = ${i}');
          }
          break;
        // Input
        case 9:
          print('Input:');
          _stack.push(stdin.readByteSync());
          break;
        // dup
        case 12:
          if (debug) {
            print('dup');
          }
          var top = _stack.pop();
          _stack.push(top);
          _stack.push(top);
      }
      if (debug) {
        print('----------');
        _stack.print();
      }
    }
  }
}
