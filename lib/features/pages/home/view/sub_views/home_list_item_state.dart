import 'package:reddit_api/features/pages/home/viewmodel/home_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:reddit_api/core/extensions/context_extension.dart';

extension HomeListItemWidget on HomeListItemState {
  Widget buildWidget(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(posts[index].data!.title!),
              leading: _nullCheckImages(context,posts[index].data!.thumbnail)
            ),
          );
        });
  }

  Widget _nullCheckImages(BuildContext context, String? url) {
    if (url != null) {
      return Container(
        width: context.width * 0.30,
        height: context.height * 0.40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
             url,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      return Container(
        width: context.width * 0.30,
        height: context.height * 0.40,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo/Reddit_logo.png')),
        ),
      );
    }
  }
}
