
import 'package:flutter_riverpod/flutter_riverpod.dart';



/// here we are creating the class CounterDemo that extends from StateNotifier of type int
/// if any changes happend it will automatically notifiy its listeners without using the
/// notifylistner()
class CounterDemo extends StateNotifier<int>{
  /// assigning the initial value as 0
  CounterDemo():super(0);

  /// this method is used to increase the state by 1
  void increament(){
    state++;
  }

}
/// here we are CounterProvider as an instance for  CounterDemo class so we can use it
/// in our entire app

final CounterProvider= StateNotifierProvider<CounterDemo,int>((ref) => CounterDemo());