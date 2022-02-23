
import 'dart:convert';

import 'package:api_test_project/modals/testModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ApiClassThree extends StatefulWidget {
  const ApiClassThree({Key? key}) : super(key: key);

  @override
  _ApiClassThreeState createState() => _ApiClassThreeState();
}

class _ApiClassThreeState extends State<ApiClassThree> {
  List<TestModel> apiList=[];
   Future<List<TestModel>> getApi()async{
     final response=await http.get(Uri.parse('https://api.first.org/data/v1/countries'));

     var data = jsonDecode(response.body.toString());

     if(response.statusCode==200){
       for(Map i in data){
         apiList.add(TestModel.fromJson(i));
       }
       return apiList;
     }else{
       return apiList;
     }

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api test'),
      ),
      body:Column(
        children: [
          FutureBuilder(
              builder: (context,AsyncSnapshot<List<TestModel>> snapshot){

                if(!snapshot.hasData){
                  return Text("Loading..");
                }else{
                  return ListView.builder(
                      itemCount: apiList.length,
                      itemBuilder:(context,index){
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(snapshot.data![index].status.toString()),
                          ),
                          title: Text(snapshot.data![index].version.toString()),
                          subtitle: Text(snapshot.data![index].version.toString()),
                        );
                      });
                }

              }
          )
        ],
      ) ,
    );
  }
}
