import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_api/features/model/response_model/reddit_model.dart';
import 'package:reddit_api/features/service/reddit_Service.dart';

abstract class HomeState {}

class HomeCubit extends Cubit<HomeState> {
  RedditService service = RedditService();
  late List<Child> dataPosts;

  HomeCubit() : super(HomeInitial()) {
    fetchPost();
  }

  void fetchPost() async {
    emit(HomeLoadingState(true));
    final posts = await service.getPosts();
    if (posts!.isEmpty) {
      emit(HomeItemsErrorState());
    } else {
      dataPosts = posts;
      emit(HomeListItemState(dataPosts));
    }
    
  }
}

class HomeInitial extends HomeState {
  Widget buildWidget() {
    return SizedBox();
  }
}

class HomeLoadingState extends HomeState {
  final bool isLoading;

  HomeLoadingState(this.isLoading);
}

class HomeListItemState extends HomeState {
  final List<Child> posts;

  HomeListItemState(this.posts);
}

class HomeItemsErrorState extends HomeState {
  Widget buildWidget() {
    return Center(
      child: Text('Hata var'),
    );
  }
}
