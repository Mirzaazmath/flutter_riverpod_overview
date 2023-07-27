
import 'dart:convert';

import 'package:http/http.dart';

import '../model/todomodel.dart';

class ApiServices{
  final String url="https://jsonplaceholder.typicode.com/todos";

  Future<List<TodoModel>> fetchdata()async{

    try{
      Response response=await get(Uri.parse(url));
      if(response.statusCode==200){
        List todolist = jsonDecode(response.body);
        return todolist.map((Element) =>TodoModel.fromJson(Element) ).toList();
      }
      else{
        return [];
      }


    }catch(error){
      throw error;

    }


  }
}