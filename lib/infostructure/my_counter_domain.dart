
import 'package:practise_work/domain/counter_domain.dart';

class MyCounterDomain extends CounterDomain{

  List<String> myTodo = [];

  @override
  void addTodo(String todo) {
    // TODO: implement addTodo
    myTodo = [...myTodo,todo];
  }

  @override
  List<String> todo() {
    // TODO: implement todo
    return myTodo;
  }

}