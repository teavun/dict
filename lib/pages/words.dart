import 'package:dict/dict_provider.dart';
import 'package:dict/pages/memorized_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WordsView extends StatelessWidget {
  final String title;
  WordsView({@required this.title});

  @override
  Widget build(BuildContext context) {
    var dictProvider = Provider.of<DictProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notes),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MemorizedWords(),
                    ),
                  );
                },
              ),
              Positioned(
                  left: 5,
                  top: 5,
                  child: Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text('${dictProvider.memorized.length}'),
                      ),
                    ),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red),
                  )),
            ],
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
          itemCount: dictProvider.words.length,
          itemBuilder: (context, index) {
            var w = dictProvider.words[index];
            return ListTile(
                title: Text(dictProvider.words[index].title),
                subtitle: Text(dictProvider.words[index].subtitle),
                leading: Text('${w.repeatCounter}'),
                trailing: IconButton(
                    icon:
                        /* dictProvider.memorized.contains(w)
                        ? Icon(Icons.remove)
                        : */
                        Icon(Icons.add),
                    onPressed: () {
                      if (!dictProvider.memorized.contains(w)) {
                        dictProvider.memorize(dictProvider.words[index]);
                      } else {
                        //dictProvider.forget(dictProvider.words[index]);
                      }
                    }));
          }),
    );
  }
}
