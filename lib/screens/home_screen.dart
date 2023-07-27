import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_overview/riverpod_providers/counter_provider.dart';



/// here we are using the ConsumerWidget to extends our class
/// so that we can access any provider
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  /// In build method we add WidgetRef to use the provider
  /// This entire class act as ConsumerWidget
  Widget build(BuildContext context,WidgetRef  ref) {
    debugPrint("Rebuild");
    final count =ref.watch(CounterProvider);

    return Scaffold(
      appBar: AppBar(
        title:const  Text("Riverpod Counter App"),
        actions: [
          IconButton(onPressed: (){
            /// here we can refresh our provider
          //  ref.invalidate(CounterProvider);
            // or
            ref.refresh(CounterProvider);
          }, icon: Icon(Icons.refresh,color: Colors.white,))
        ],
      ),
      body: Center(
        child: Text(count.toString(),style:const  TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          /// here we are calling increament() which increase the value by 1

          ref.read(CounterProvider.notifier).increament();

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
