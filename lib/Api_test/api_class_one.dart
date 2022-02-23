import 'dart:convert';

import 'package:api_test_project/modals/postsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiClassOne extends StatefulWidget {
  const ApiClassOne({Key? key}) : super(key: key);

  @override
  _ApiClassOneState createState() => _ApiClassOneState();
}

class _ApiClassOneState extends State<ApiClassOne> {

  List<PostsModel> postList=[];
  Future<List<PostsModel>> getPostApi()async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data=jsonDecode(response.body.toString());

    if(response.statusCode==200){
      for(Map i in data){
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    }else{
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Class One'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context,snapshot){
                  if(!snapshot.hasData){
                    return Text('Loading');
                  }else{
                    return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (BuildContext context,index){
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Title ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text(postList[index].title.toString()),
                                  SizedBox(height: 5,),
                                  Text('Description :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text('Description'+'\n'+postList[index].body.toString())

                                ],
                              ),
                            ),
                          );
                        });
                  }
                }
            ),
          )

        ],
      ),
    );
  }
}
