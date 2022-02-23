import 'dart:convert';

import 'package:api_test_project/modals/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class UserApiTwo extends StatefulWidget {
  const UserApiTwo({Key? key}) : super(key: key);

  @override
  _UserApiTwoState createState() => _UserApiTwoState();
}

class _UserApiTwoState extends State<UserApiTwo> {

  //This is dynamic system api

  var data=[];
  Future<void> getUserApi()async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if(response.statusCode==200){
      data=jsonDecode(response.body.toString());
    }else{

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User api two'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                future: getUserApi(),
                builder: (context,snapshot){
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Text('Loading');
                  }else{
                    return ListView.builder(
                      itemCount: data.length,
                        itemBuilder: (context,index){
                          return Card(
                            child: Column(
                              children: [
                                ReuseableRow(title: "Name :", value: data[index]["name"].toString()),
                                ReuseableRow(title: "UserName :", value:data[index]["username"].toString()),
                                ReuseableRow(title: "Address :", value:data[index]["address"]["street"].toString()),
                                ReuseableRow(title: "Email :", value:data[index]["email"].toString()),
                                ReuseableRow(title: "Geo :", value:data[index]["address"]["geo"]["lat"].toString()),
                                ReuseableRow(title: "Phone :", value:data[index]["phone"].toString()),
                                ReuseableRow(title: "Website :", value:data[index]["website"].toString()),
                                ReuseableRow(title: "Company :", value:data[index]["company"]["catchPhrase"].toString()),

                              ],
                            ),
                          );

                        });
                  }

                },
              )
          )
        ],
      ),
    );
  }
}
class ReuseableRow extends StatelessWidget {
  String title,value;
  ReuseableRow({Key? key, required this.title,required this.value}) : super(key: key);

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

