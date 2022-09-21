import 'package:api_tasks/task_2/app_service.dart';
import 'package:api_tasks/task_3/images_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List<ImagesModel> images = [];

  void changeImage() async {
    images = await AppService().getImage();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              changeImage();
            },
            child: const Text('Click'),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: images.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image(
                      image: NetworkImage(
                        images[index].url,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
