import 'package:flutter/material.dart';
import 'package:reddit_api/core/extensions/context_extension.dart';

PreferredSize customAppBar({String? title, Widget? actions, BuildContext? context}) {
  return PreferredSize(
      child: actions == null
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                title!,
                style: Theme.of(context!).textTheme.headline1,
              ),
            )
          : AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(title!),
              actions: [actions],
            ),
      preferredSize: Size.fromHeight(context!.height * 0.08));
}
