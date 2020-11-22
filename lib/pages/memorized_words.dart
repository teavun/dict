import 'package:dict/dict_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MemorizedWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _dictProvider = Provider.of<DictProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Memorized Words ${_dictProvider.memorized.length}"),
      ),
      body: ListView.builder(
          itemCount: _dictProvider.memorized.length,
          itemBuilder: (context, index) {
            var mw = _dictProvider.memorized[index];
            return ListTile(
              leading: IconButton(
                  icon: Icon(Icons.today),
                  onPressed: () {
                    _dictProvider.forget(mw);
                  }),
              title: Text(mw.title),
              subtitle: Text(mw.subtitle),
            );
          }),
    );
  }
}
