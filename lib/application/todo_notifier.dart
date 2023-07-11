import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practise_work/application/todo_notifier_state.dart';
import 'package:practise_work/domain/counter_domain.dart';

class TodoNotifier extends StateNotifier<TodoNotifierState?>{
  final CounterDomain _counterDomain;
  TodoNotifier(this._counterDomain):super(TodoNotifierState.init());


  void addTodo(String getTodo) {
    _counterDomain.addTodo(getTodo);
    List <String> tempList = _counterDomain.todo() ;
    state = TodoNotifierState(todoLength: 0, todoList:  tempList );

  }

}