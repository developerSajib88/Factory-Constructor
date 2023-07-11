
import 'package:get_it/get_it.dart';
import 'package:practise_work/domain/counter_domain.dart';
import 'package:practise_work/infostructure/my_counter_domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practise_work/application/todo_notifier.dart';

part 'provider.dart';

final myDependencies = GetIt.instance;

Future<void> init()async{

  myDependencies.registerLazySingleton<CounterDomain>(() => MyCounterDomain());

}