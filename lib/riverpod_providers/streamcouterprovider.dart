import 'package:flutter_riverpod/flutter_riverpod.dart';


/// Here we are creating the streamProvider for our counter App
final streamProvider=StreamProvider<int>((ref) {
  return Stream.periodic(const Duration(milliseconds: 2),((computationCount)=>computationCount));

});