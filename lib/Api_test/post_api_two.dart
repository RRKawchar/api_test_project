import 'dart:convert';

import 'package:api_test_project/modals/PostsModelTwo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class PostApiTwo extends StatefulWidget {
  const PostApiTwo({Key? key}) : super(key: key);

  @override
  _PostApiTwoState createState() => _PostApiTwoState();
}

class _PostApiTwoState extends State<PostApiTwo> {
  
  List<PostsModelTwo> postList=[];

  Future<List<PostsModelTwo>> getPostApi()async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        postList.add(PostsModelTwo.fromJson(i));
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
        title: Text("Post Api two"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
                builder: (context,AsyncSnapshot<List<PostsModelTwo>> snapshot){
                 if(!snapshot.hasData) {
                   return Text("Loading");
                 }else{
                   return ListView.builder(
                     itemCount: postList.length,
                       itemBuilder: (context,index){
                         return Card(
                           child: Column(
                             children: [
                               Reuseable(title: "Id", value: snapshot.data![index].id.toString()),
                               Reuseable(title: "Title", value: snapshot.data![index].title.toString()),
                              // Reuseable(title: "Body", value: snapshot.data![index].body.toString()),
                             ],
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

