part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  PostEvent();

  @override
  List<Object> get props => [];
}

class PostFetched extends PostEvent {
  PostFetched();
}
