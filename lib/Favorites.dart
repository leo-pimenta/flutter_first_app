library favorites;

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

part 'FavoritesState.dart';

class Favorites extends StatefulWidget {
  final List<WordPair> _saved;

  const Favorites(Key? key, List<WordPair> saved) : _saved = saved, super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoritesState();
}