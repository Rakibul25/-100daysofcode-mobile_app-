import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Online extends StatefulWidget {
  const Online({Key? key}) : super(key: key);

  @override
  State<Online> createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  List _items = [];
  var data;
  final uri = Uri.parse('https://randomuser.me/api/?results=20');

  Future<void> fetchUsers() async {
    http.Response response = await http.get(uri);
    final decode = await json.decode(response.body);
    setState(() {
      _items = decode["results"];
      //print(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items==null?0:_items.length,
        itemBuilder: (context,index){
        return Card(
          key: ValueKey(_items[index]["username"]),
          margin: const EdgeInsets.all(10),
          color: Colors.amber.shade100,
          child: ListTile(
            leading: Text(_items[index]["gender"]),
            title: Text(_items[index]["name"]["first"]),
            subtitle: Text(_items[index]["location"]['street']["number"].toString()),
          ),
        );
        });

}}
