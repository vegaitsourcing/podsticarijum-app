enum AgeGroupType {
  first,
  second,
  third,
  fourth,
}

String ageGroupTypeToString(AgeGroupType type) =>
    ageGroupTypeStrings[type.index];

const List<String> ageGroupTypeStrings = [
  '0-1 godina',
  '1-3 godina',
  '3-5 godina',
  '5-7 godina'
];
