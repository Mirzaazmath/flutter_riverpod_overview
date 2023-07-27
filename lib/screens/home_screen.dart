import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod_providers/todo_provider.dart';

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
          /// here we are call gettodoprovider which itselt called the fetchdata() from apiservice class
          final tododata=ref.watch(gettodoprovider);
          /// here we are using the when method to handle the api call time
          /// data when we get the data
          /// error when we get the error
          /// loading when the api call and it loading
          return tododata.when(data: (data){
          return  GridView.builder(
            padding:const  EdgeInsets.all(20),
                shrinkWrap: true,
                itemCount: data.length,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 18,

                    crossAxisCount: 2



                ), itemBuilder: (context,index){
              return  Stack(
                children: [
                  Container(
                    padding:const  EdgeInsets.all(5),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.purple[900],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      padding:const  EdgeInsets.all(15),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple.shade400,
                            spreadRadius: 0,
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(child: Text(
                            data[index].title.toString(),style: TextStyle(color: Colors.white),)),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child:data[index].completed!?const  Icon(Icons.done,color: Colors.green,size: 30,):const Icon(Icons.pending_actions,color: Colors.red,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              );
          });

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
