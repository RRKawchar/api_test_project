import 'dart:convert';
import 'dart:html';

import 'package:api_test_project/api2/model/model11.dart';
import 'package:api_test_project/api2/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen11 extends StatefulWidget {
  const HomeScreen11({Key? key}) : super(key: key);

  @override
  _HomeScreen11State createState() => _HomeScreen11State();
}

class _HomeScreen11State extends State<HomeScreen11> {
  final url = "https://jsonplaceholder.typicode.com/users";
  final textController = TextEditingController();
  List<Model11> list = [];

  Future<List<Model11>> getData() async {
    final response = await http.get(Uri.parse("$url"));
    var data = jsonDecode(response.body);
    print(data);
    if (response.statusCode == 200) {
      for (Map i in data) {
        list.add(Model11.fromJson(i));
      }
      return list;
    } else {
      return list;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json parse demo"),
      ),
      body: Column(
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(hintText: "Enter your data"),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Save")),
          ),
          Expanded(
              child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot<List<Model11>> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.green,
                    color: Colors.pink,
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                child:
                                    Text(list[index].username![0].toString()),
                                backgroundColor: Colors.deepPurple,
                              ),
                              title: Text(
                                list[index].name.toString(),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                              subtitle: Text(list[index].email.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              }
            },
          ))
        ],
      ),
    );
  }
}
