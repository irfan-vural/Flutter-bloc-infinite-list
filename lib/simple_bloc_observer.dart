import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class SimpleBlocObserver extends BlocObserver {
  const SimpleBlocObserver();

  @override
  void onTransition(
    Bloc bloc,
    Transition transition,
  ) {
    print('bloc $bloc');
    super.onTransition(bloc, transition);
    print(transition);
  }
/*
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }*/
}
