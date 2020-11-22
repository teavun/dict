import 'package:flutter/material.dart';

import 'models/word.dart';

class DictProvider extends ChangeNotifier {
  List<Word> _words = Word.items;
  List<Word> get words => _words;

  List<Word> _memorized = new List<Word>();
  List<Word> get memorized => _memorized;

  void memorize(Word word) {
    word.repeatCounter++;
    if (word.repeatCounter >= 5 && !_memorized.contains(word)) {
      _memorized.add(word);
    }
    notifyListeners();
  }

  void forget(Word word) {
    word.repeatCounter = 0;
    _memorized.remove(word);
    notifyListeners();
  }
}
