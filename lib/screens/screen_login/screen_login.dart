import '../../common/widgets/form_custom.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  static String route = '/login';

  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return FormCustom();
  }
}
