import 'dart:collection';
import 'dart:core' as core;
import 'dart:core';

import 'dart:io';

class Stack<T> {
  final ListQueue<T> list = ListQueue();

  final int noLimit = -1;

  /// the maximum number of entries allowed on the stack. -1 = no limit.
  int _sizeMax = 0;

  /// Default constructor sets the maximum stack size to 'no limit.'
  Stack() {
    _sizeMax = noLimit;
  }

  /// Constructor in which you can specify maximum number of entries.
  /// This maximum is a limit that is enforced as entries are pushed on to the stack
  /// to prevent stack growth beyond a maximum size. There is no pre-allocation of
  /// slots for entries at any time in this library.
  Stack.sized(int sizeMax) {
    if (sizeMax < 2) {
      throw core.Exception('Will never happen');
    } else {
      _sizeMax = sizeMax;
    }
  }

  /// check if the stack is empty.
  bool get isEmpty => list.isEmpty;

  /// check if the stack is not empty.
  bool get isNotEmpty => list.isNotEmpty;

  /// push element in top of the stack.
  void push(T e) {
    if (_sizeMax == noLimit || list.length < _sizeMax) {
      list.addLast(e);
    } else {
      throw core.Exception('Will never happen');
    }
  }

  /// get the top of the stack and delete it.
  T pop() {
    if (isEmpty) {
      throw core.Exception('Will never happen');
    }
    var res = list.last;
    list.removeLast();
    return res;
  }

  /// get the top of the stack without deleting it.
  T top() {
    if (isEmpty) {
      throw core.Exception('Will never happen');
    }
    return list.last;
  }

  /// get the size of the stack.
  int size() {
    return list.length;
  }

  /// get the length of the stack.
  int get length => size();

  /// returns true if element is found in the stack
  bool contains(T x) {
    return list.contains(x);
  }

  /// print stack
  void print() {
    stdout.write('[ ');
    for (var item in List<T>.from(list).reversed) {
      stdout.write(item);
      stdout.write(' ');
    }
    core.print(']');
  }
}
