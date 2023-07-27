import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod_providers/streamcouterprovider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Riverpod Api Handling"),

      ),
      /// here we are using the Consumer to update particular part of our UI
      body: Consumer(

        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          /// Here we are creating count as an instance of  streamProvider for our counter App
          final count=ref.watch(streamProvider);
          /// here we are using the when method to handle the api call time
          /// data when we get the data
          /// error when we get the error
          /// loading when the api call and it loading
          return count.when(data: (data){
          return Center(
            child: Text(count.value.toString(),style:const  TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
          );

          },
              /// error takes this two parameter (error,stackTrace)
              error: (error,stackTrace){
            debugPrint(error.toString());
            return const Center(
                child: Text("An Error Occured"));
          }, loading: (){
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
        },

      ),
    );
  }
}
