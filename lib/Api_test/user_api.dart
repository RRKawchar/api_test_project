import 'dart:convert';

import 'package:api_test_project/modals/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserApi extends StatefulWidget {
  const UserApi({Key? key}) : super(key: key);

  @override
  _UserApiState createState() => _UserApiState();
}

class _UserApiState extends State<UserApi> {
  List<UserModel> userList=[];
  Future<List<UserModel>> getUserApi()async{
    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data=jsonDecode(response.body.toString());


    if(response.statusCode==200){
      for(Map i in data){
        print(i['name']);
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    }else{
      return userList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User api'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                future: getUserApi(),
                builder: (context,AsyncSnapshot<List<UserModel>> snapshot){
                  if(!snapshot.hasData){
                    return Text("Loading");
                  }else{
                    return ListView.builder(
                      itemCount: userList.length,
                        itemBuilder: (context,index){
                          return Card(
                            child: Column(
                              children: [
                                ResuableRow(title: "ID : ", value: snapshot.data![index].id.toString()),
                                ResuableRow(title: "Name : ", value: snapshot.data![index].name.toString()),
                                ResuableRow(title: "Username : ", value: snapshot.data![index].username.toString()),
                                ResuableRow(title: "Email : ", value: snapshot.data![index].email.toString()),
                                ResuableRow(title: "Phone : ", value: snapshot.data![index].phone.toString()),
                                ResuableRow(title: "Company Name : ", value: snapshot.data![index].company!.name.toString()),
                                ResuableRow(title: "Address : ", value: snapshot.data![index].address!.city.toString()),

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
class ResuableRow extends StatelessWidget {
  String title,value;
  ResuableRow({Key? key, required this.title,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value)
        ],
      ),
    );
  }
}


