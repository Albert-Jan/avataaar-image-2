import 'package:avataaar_image_2/avataaar_image_2.dart';
import 'package:flutter/material.dart';

void main() => runApp(AvataaarExample());

class AvataaarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Avataaars'), centerTitle: true),
        body: ExampleBody(),
      ),
    );
  }
}

class ExampleBody extends StatefulWidget {
  @override
  _ExampleBodyState createState() => _ExampleBodyState();
}

class _ExampleBodyState extends State<ExampleBody> {
  static const String baseUrl = 'http://www.yoururl.com';
  Avataaar _avatar;

  @override
  void initState() {
    super.initState();
    _randomizeAvatar();
  }

  void _randomizeAvatar() => _avatar = Avataaar.random(baseUrl: baseUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(children: [
        Expanded(
          child: Center(
            child: AvataaarImage(
              baseUrl: baseUrl,
              avatar: _avatar,
              errorImage: Icon(Icons.error),
              placeholder: CircularProgressIndicator(),
              width: 128.0,
            ),
          ),
        ),
        IconButton(
          iconSize: 48.0,
          icon: Icon(Icons.refresh),
          onPressed: () => setState(_randomizeAvatar),
        ),
      ]),
    );
  }
}
