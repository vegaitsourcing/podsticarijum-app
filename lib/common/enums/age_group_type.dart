enum AgeGroupType {
  first('0-1 godina'),
  second('1-3 godina'),
  third('3-5 godina'),
  fourth('5-7 godina');

  const AgeGroupType(this.title);

  final String title;
}