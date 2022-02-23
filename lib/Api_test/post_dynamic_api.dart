import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class PostDynamicApi extends StatefulWidget {
  const PostDynamicApi({Key? key}) : super(key: key);

  @override
  _PostDynamicApiState createState() => _PostDynamicApiState();
}

class _PostDynamicApiState extends State<PostDynamicApi> {
  var data=[];
  Future<void> getPostApi()async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if(response.statusCode==200){
      data=jsonDecode(response.body.toString());
    }else{

    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic api"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Text("Loading");
                }else{
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context,index){
                        return Card(
                          child: Column(
                            children: [
                              Reuseable(title: "UserId : ", value: data[index]["userId"].toString()),
                              Reuseable(title: "Id : ", value: data[index]["id"].toString()),
                              Reuseable(title: "Title : ", value: data[index]["title"].toString()),
                            ],
                          ),
                        );
                      }
                  );
                }
                
              },
            ),
          )
        ],
      ),
    );
  }
}
class Reuseable extends StatelessWidget {
  String title,value;
  Reuseable({Key? key,required this.title,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value)
      ],
    );
  }
}

