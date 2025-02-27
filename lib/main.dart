import 'package:deepseek/core/services/service_locator.dart';
import 'package:deepseek/features/home/presention/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presention/controller/user_bloc.dart';

void main() async{
await  setupSingeltonServices();
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (context) => UserBloc(getIt()),
        child: const HomeView(),
      ),

    );
  }
}
