import 'package:avataaar_image_2/avataaar_image_2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AvataaarExample());

class AvataaarExample extends StatelessWidget {
  const AvataaarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Avataaars'), centerTitle: true),
        body: const ExampleBody(),
      ),
    );
  }
}

class ExampleBody extends StatefulWidget {
  const ExampleBody({Key? key}) : super(key: key);

  @override
  _ExampleBodyState createState() => _ExampleBodyState();
}

class _ExampleBodyState extends State<ExampleBody> {
  static const String baseUrl = 'http://www.yoururl.com';
  late Avataaar _avatar;

  @override
  void initState() {
    super.initState();
    _randomizeAvatar();
  }

  void _randomizeAvatar() {
    _avatar = Avataaar.random(baseUrl: baseUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: AvataaarImage(
                baseUrl: baseUrl,
                avatar: _avatar,
                errorImage: const Icon(Icons.error),
                placeholder: const CircularProgressIndicator(),
                width: 128.0,
              ),
            ),
          ),
          IconButton(
            iconSize: 48.0,
            icon: const Icon(Icons.refresh),
            onPressed: () => setState(_randomizeAvatar),
          ),
        ],
      ),
    );
  }
}
