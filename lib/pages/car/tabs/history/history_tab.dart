import 'package:caranger/model/history.dart';
import 'package:flutter/material.dart';

class HistoryTab extends StatelessWidget {
  final List<History> historyItems;

  HistoryTab({this.historyItems});

  @override
  Widget build(BuildContext context) {
    return HistoryList(context: context, historyItems: historyItems);
  }
}

class HistoryList extends StatelessWidget {
  final BuildContext context;
  final List<History> historyItems;

  const HistoryList({Key key, this.context, this.historyItems}) : super();

  @override
  Widget build(BuildContext context) {
    print("ITEMS: $historyItems");

    return ListView.builder(
        padding: const EdgeInsets.all(5.0),
        itemCount: historyItems.length,
        itemBuilder: /*1*/ (context, i) {
          return _buildRow(historyItems[i]);
        });
  }

  void onCardTap(History historyItem) {

  }

  Widget _buildRow(History historyItem) {
    return Card(
      color: Colors.blueGrey[900],
      child: InkWell(
        onTap: () => onCardTap(historyItem),
        splashColor: Colors.cyanAccent.withAlpha(30),
        child: Container(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "${historyItem.type}",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 22),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text("${historyItem.local}"),
                          ),
                        ])
                  ],
                ))),
      ),
    );
  }
}
