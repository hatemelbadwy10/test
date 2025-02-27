import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:deepseek/features/home/domain/entity/user_entity.dart';
import 'package:meta/meta.dart';

import '../../domain/repo/get_user_repo.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserRepo _getUserRepo;
  UserBloc(this._getUserRepo) : super(UserInitial()) {

  }
  Future _getUsers (GetUserEvent event ,Emitter<UserState>emit)async{
    emit(UserLoading());
    final result = await _getUserRepo.getUsers();
    result.fold((l){
      emit(UserFailure(err: l.message));
    }, (r){
      emit(UserSuccess(userList: r));
    });
  }
}
