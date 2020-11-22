import 'package:flutter/material.dart';
import 'package:meta/meta.dart' show required;

class Word {
  Word(
      {@required this.title,
      @required this.subtitle,
      @required this.repeatCounter});

  final String title;
  final String subtitle;
  int repeatCounter;

  static List<Word> items = <Word>[
    Word(
      title: "boilerplate",
      subtitle: "basmakalıp",
      repeatCounter: 0,
    ),
    Word(
      title: "declarative",
      subtitle: "bildiren",
      repeatCounter: 0,
    ),
    Word(
      title: "ephemeral",
      subtitle: "fani, muvakkat, geçici",
      repeatCounter: 0,
    ),
    Word(
      title: "respectively",
      subtitle: "sırasıyla",
      repeatCounter: 0,
    ),
    Word(
      title: "belongs",
      subtitle: "ait",
      repeatCounter: 0,
    ),
    Word(
      title: "literal",
      subtitle: "aslına uygun, kelimesi kelimesine",
      repeatCounter: 0,
    ),
  ];
}
