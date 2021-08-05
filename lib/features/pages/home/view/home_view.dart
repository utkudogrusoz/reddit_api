import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_api/core/exception/widget_not_found_exception.dart';

import 'package:reddit_api/features/pages/home/viewmodel/home_cubit_state.dart';
import 'sub_views/home_list_item_state.dart';
import 'package:reddit_api/core/extensions/context_extension.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeCubit = HomeCubit();
    return BlocProvider(
        create: (context) => homeCubit,
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HomeItemsErrorState) {
              return;
            }
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Container(
                  width: context.width * 0.30,
                  height: context.height * 0.40,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/logo/Reddit_logo.png'))),
                ),
              ),
              body: buildBody(state, context),
            );
          },
        ));
  }

  Widget buildBody(HomeState state, BuildContext context) {
    if (state is HomeInitial) {
      return Text('Products Initial State');
    } else if (state is HomeLoadingState) {
      return Center(child: CircularProgressIndicator());
    } else if (state is HomeListItemState) {
      return state.buildWidget(context);
    }
    throw WidgetNotFoundException<HomeView>();
  }
}
