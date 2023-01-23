import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Offline extends StatefulWidget {
  const Offline({Key? key}) : super(key: key);

  @override
  State<Offline> createState() => _OfflineState();
}

class _OfflineState extends State<Offline> {
  List _items = [];
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/offlinejson.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: readJson,
            child: const Text('Load Data'),
          ),

          // Display the data loaded from sample.json
          _items.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        key: ValueKey(_items[index]["code"]),
                        margin: const EdgeInsets.all(10),
                        color: Colors.amber.shade100,
                        child: ListTile(
                          leading: Text(_items[index]["code"]),
                          title: Text(_items[index]["coursename"]),
                          subtitle: Text(_items[index]["faculty"]),
                        ),
                      );
                    },
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
