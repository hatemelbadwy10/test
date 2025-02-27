import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/user_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const CircularProgressIndicator();
          } else if (state is UserSuccess) {
            return ListView.builder(
                itemCount: state.userList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.userList[index].userName),
                  );
                });
          } else if (state is UserFailure) {
            return Text(state.err);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
