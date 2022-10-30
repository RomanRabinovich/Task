import 'package:flutter/material.dart';
import 'package:pagination_app/constant.dart';

class PostDetailScreen extends StatefulWidget {
  final String title;
  final String body;

  const PostDetailScreen({Key key, this.title, this.body}) : super(key: key);

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Constants.backgroundColor,
        appBar: AppBar(
          title: Text('Post Details'),
          backgroundColor: Constants.backgroundColorAppbar,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                widget.body,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: Navigator.of(context).pop,
                child: Text('Back to News '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
