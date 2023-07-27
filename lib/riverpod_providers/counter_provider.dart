
import 'package:flutter_riverpod/flutter_riverpod.dart';


/// here we are creating the CounterProvider that is used for our counter app
final CounterProvider=StateProvider<int>((ref) => 0);