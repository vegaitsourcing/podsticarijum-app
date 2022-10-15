import '../../common/widgets/app_bar/app_bar.dart';
import '../../common/widgets/default_background.dart';
import '../../common/widgets/default_header.dart';
import '../../screens/screen_experts/widgets/text_with_header_widget.dart';
import 'package:flutter/material.dart';

class ScreenExperts extends StatelessWidget {
  static const String route = '/experts';
  final int teamNumber;

  const ScreenExperts(this.teamNumber, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundPaint: BackgroundPaint.Yellow),
      body: DefaultContainer(
        context,
        scale: 0.85,
        [
          DefaultHeader(context, "Tim $teamNumber"),
          const SizedBox(height: 68),
          TextWithHeaderWidget("Petar Peric", _description,
              imageUrl: 'images/image-placeholder.png'),
          const SizedBox(height: 68),
          TextWithHeaderWidget("Nikola Ivanovic", _description,
              imageUrl: 'images/image-placeholder.png'),
          const SizedBox(height: 68),
          TextWithHeaderWidget("Djuro Radusinovic", _description,
              imageUrl: 'images/image-placeholder.png'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  static const _description =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqui "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.""";
}
