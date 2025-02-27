part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}
class UserLoading extends UserState{}
class UserSuccess extends UserState{
  final List<UserEntity> userList;

  UserSuccess({required this.userList});
}
class UserFailure extends UserState{
  final String err;

  UserFailure({required this.err});
}
