import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_overview/model/todomodel.dart';
import 'package:riverpod_overview/network/networkservices.dart';

/// here we are creating the instace for ApiServices class as apiprovider
final apiprovider=Provider<ApiServices>((ref) => ApiServices());



/// here we are creating the gettodoprovider which is FutureProvider that return the List<TodoModel>>
/// we are acessing the fetchdata via apiprovider
final gettodoprovider=FutureProvider<List<TodoModel>>((ref) {
  return ref.read(apiprovider).fetchdata();

});
