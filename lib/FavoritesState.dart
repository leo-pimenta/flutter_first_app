part of favorites;

class _FavoritesState extends State<Favorites> {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final tiles = widget._saved.map(
            (pair) {
          return ListTile(
              title: Text(
                  pair.asPascalCase,
                  style: _biggerFont
              )
          );
        }
    );

    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(tiles: tiles, context: context).toList()
        : <Widget>[];

    return Scaffold(
      appBar: AppBar(
          title: const Text('Saved suggestions')
      ),
      body: ListView(children: divided),
    );
  }
}