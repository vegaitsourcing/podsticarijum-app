import '../../../common/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class HeaderWithPhotoWidget extends StatelessWidget {
  final String text;

  const HeaderWithPhotoWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        DefaultHeader(context, text),
      ],
    );
  }
}
