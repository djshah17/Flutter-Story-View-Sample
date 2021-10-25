import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class MyStoryViewScreen extends StatefulWidget {
  @override
  _MyStoryViewScreenState createState() => _MyStoryViewScreenState();
}

class _MyStoryViewScreenState extends State<MyStoryViewScreen> {
  final storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    final List<StoryItem> listStoryItems = [
      StoryItem.pageImage(
          url:
          "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGV1cm9wZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          controller: storyController),
      StoryItem.pageImage(
          url:
          "https://images.unsplash.com/photo-1533105079780-92b9be482077?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JlZWNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          controller: storyController),
      StoryItem.pageImage(
          url:
          "https://images.unsplash.com/photo-1511527661048-7fe73d85e9a4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3BhaW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          controller: storyController),
    ];
    return Material(
      child: StoryView(
        storyItems: listStoryItems,
        controller: storyController,
        inline: false,
        repeat: true,
      ),
    );
  }
}