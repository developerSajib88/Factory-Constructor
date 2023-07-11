import 'package:equatable/equatable.dart';

class TodoNotifierState extends Equatable{
  final int todoLength;
  final List<String> todoList;
  TodoNotifierState({required this.todoLength, required this.todoList});

  @override
  // TODO: implement props
  List<Object?> get props => [todoList,todoLength];

  factory TodoNotifierState.init()=> TodoNotifierState(todoLength: 0, todoList: []);


  TodoNotifierState copyWith({
     int? todoLength,
     List<String>? todoList
}) => TodoNotifierState(todoLength: todoLength ?? this.todoLength, todoList: todoList?? this.todoList);

}