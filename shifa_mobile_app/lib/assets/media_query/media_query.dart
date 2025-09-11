// lib/core/utils/media_query.dart

import 'package:flutter/widgets.dart';

class MediaQueryHelper {

  // Get screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

}
