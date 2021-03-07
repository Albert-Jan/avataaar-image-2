import 'package:avataaar_image_2/src/api.dart';
import 'package:avataaar_image_2/src/avataaar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

class AvataaarImage extends StatelessWidget {
  AvataaarImage({
    Key key,
    @required this.baseUrl,
    @required this.avatar,
    this.width: 64.0,
    this.placeholder,
    this.errorImage,
  })  : this.builder = null,
        super(key: key);

  AvataaarImage.builder({
    Key key,
    @required this.builder,
    @required this.baseUrl,
    @required this.avatar,
    this.width: 64.0,
  })  : this.placeholder = null,
        this.errorImage = null,
        super(key: key);

  final String baseUrl;
  final Widget Function(BuildContext context, String url) builder;
  final Avataaar avatar;
  final Widget placeholder;
  final Widget errorImage;
  final double width;

  @override
  Widget build(BuildContext context) {
    final imageUrl = AvataaarsApi().getUrl(baseUrl, avatar, width);
    return builder != null
        ? builder(context, imageUrl)
        : CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: placeholder != null ? (_, __) => placeholder : null,
            errorWidget: errorImage != null ? (_, __, ___) => errorImage : null,
          );
  }
}
