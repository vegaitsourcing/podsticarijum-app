import '../../enums/age_group_type.dart';
import 'subcategory.dart';

class Category {
  final AgeGroupType ageGroupType;
  final List<Subcategory> subcategories;

  Category({required this.ageGroupType, required this.subcategories});
}
