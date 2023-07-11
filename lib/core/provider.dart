

part of 'di.dart';

final todoProvider = StateNotifierProvider<TodoNotifier,List<String>>(
        (ref) => TodoNotifier(myDependencies())
);

