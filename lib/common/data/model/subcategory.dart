import '../../enums/development_ascpect_type.dart';

class Subcategory {
  final DevelopmentAspectType developmentAspectType;
  final String staticContent;
  final List<String> greenFlags;
  final List<String> redFlags;

  Subcategory(this.developmentAspectType, this.staticContent, this.greenFlags, this.redFlags);
}