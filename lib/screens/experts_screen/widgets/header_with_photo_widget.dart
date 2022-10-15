import '../../../common/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class HeaderWithPhotoWidget extends StatelessWidget {
  final String text;
  final String imageUrl;

  const HeaderWithPhotoWidget(this.text, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        DefaultHeader(context, text),
        Image.asset(
          imageUrl,
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}
