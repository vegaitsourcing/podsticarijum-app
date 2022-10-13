import '../../common/widgets/app_bar/app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';

/**
 * 
 * TOO HACKY, HARDCODED!!!! , CHECK FOR SOME MORE RELIABLE SOLUTION
 * 
 */

class ScreenGoBackWithMessage extends StatelessWidget {
  static String route = "/go_back_with_message_screen";

  final String message;
  final Function() onClick;
  final String buttonText;

  const ScreenGoBackWithMessage(this.message, this.onClick,
      {Key? key, this.buttonText = "Vrati se na početni ekran"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 171, 1.000),
      appBar: CustomAppBar(backgroundPaint: BackgroundPaint.Yellow),
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(236, 239, 171, 1.000),
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset(
                          'images/cloud-with-heart.png',
                        ),
                      ),
                      Container(
                        width: 230,
                        height: 150,
                        alignment: Alignment.center,
                        child: SizedBox(
                          child: Text(
                            maxLines: 20,
                            overflow: TextOverflow.ellipsis,
                            message,
                            style: Theme.of(context).textTheme.headline5,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomOutlineButton(buttonText, onClick),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: Colors.white,
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   color: Color.fromRGBO(236, 239, 171, 1.000),
//                   child: Stack(
//                     fit: StackFit.loose,
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       Container(
//                         width: double.infinity,
//                         alignment: Alignment.center,
//                         child: Image.asset(
//                           'images/image-placeholder.png',
//                           height: 200,
//                           width: 200,
//                         ),
//                       ),
//                       Container(
//                         width: double.infinity,
//                         alignment: Alignment.center,
//                         child: Text(
//                           "message",
//                           style: Theme.of(context).textTheme.headlineMedium,
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Container(
//                       height: 90,
//                       child: CustomOutlineButton("dugme 2", () {}),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),