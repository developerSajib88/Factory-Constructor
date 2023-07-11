import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practise_work/core/provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final myTodo = ref.watch(todoProvider);

    return Scaffold(
      body: SafeArea(
        child: SizedBox(width: double.infinity,height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(hintText: "Text"),
              ),

              const SizedBox(height: 20,),

              SizedBox(width: double.infinity,
               child: ElevatedButton(
                onPressed: (){
                  ref.read(todoProvider.notifier).addTodo(textEditingController.text);
                  ref.read(todoProvider.notifier).setTodo();
                  textEditingController.clear();
                },
                child: const Text("Add Text"),
               ),
              ),


              Expanded(
                  child: Container(
                    width: double.infinity,height: double.infinity,padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      itemCount: myTodo.length,
                        itemBuilder: (context,index){
                          return ListTile(
                            title: Text(myTodo[index].toString()),
                          );
                        }
                    ),
                  )
              )


            ],
          ),
        ),),
      ),
    );
  }
}
