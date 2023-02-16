import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_infinite_list/posts/view/post_page.dart';

class App extends MaterialApp {
  bool get debugShowCheckedModeBanner => false;
  const App({super.key}) : super(home: const PostsPage());
}
