import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practise_work/application/app.dart';

import 'core/di.dart' as di;

void main()async{
  await di.init();
  runApp(const ProviderScope(child: MyApp())
  );
}