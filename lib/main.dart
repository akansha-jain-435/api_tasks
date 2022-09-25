import 'package:api_tasks/task_2/post_page.dart';
import 'package:api_tasks/task_3/image_page.dart';
import 'package:api_tasks/task_4/post_api_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'API Tasks',
      home: PostApiPage(),
    );
  }
}
