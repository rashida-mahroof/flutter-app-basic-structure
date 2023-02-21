part of 'home_bloc.dart';

@freezed
class HomeeState with HomeeState{
  const factory HomeeState(
     bool isLoading,
     List<Home>? home, {required bool isLoading},

  ) = _HomeeState;

  factory HomeeState.initial(){
    return const  HomeeState(isLoading:false);
  }
}
