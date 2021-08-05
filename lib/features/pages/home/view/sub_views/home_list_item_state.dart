import 'package:reddit_api/features/model/response_model/reddit_model.dart';
import 'package:reddit_api/features/pages/home/viewmodel/home_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:reddit_api/core/extensions/context_extension.dart';

extension HomeListItemWidget on HomeListItemState {
  Widget buildWidget(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return listCard(posts, index, context);
        });
  }
}

Card listCard(List<Child> posts, int index, BuildContext context) {
  return Card(
    child: ListTile(
      title: cardTitle(posts, index),
      leading: cardLeadingImage(posts, index, context),
    ),
  );
}

Text cardTitle(List<Child> posts, int index) => Text(posts[index].data!.title!);

Container cardLeadingImage(List<Child> posts, int index, BuildContext context) {
  return Container(
    width: context.width * 0.30,
    height: context.height * 0.40,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          posts[index].data!.thumbnail!,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
