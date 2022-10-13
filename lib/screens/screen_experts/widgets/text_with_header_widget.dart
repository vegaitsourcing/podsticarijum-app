import 'package:app_for_family_backup/common/widgets/default_header.dart';
import 'package:app_for_family_backup/screens/screen_experts/widgets/header_with_photo_widget.dart';
import 'package:flutter/material.dart';

class TextWithHeaderWidget extends StatelessWidget {
  final String header;
  final String text;
  final double spacing;
  final String imageUrl;
  final bool hasImage;

  const TextWithHeaderWidget(this.header, this.text,
      {Key? key, this.imageUrl = "", this.spacing = 20.0, this.hasImage = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        hasImage
            ? HeaderWithPhotoWidget(header, imageUrl)
            : DefaultHeader(context, header),
        SizedBox(height: spacing),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: spacing),
        Image.asset(
          width: double.infinity,
          'images/border_dot_line.png',
        ),
      ],
    );
  }
}
