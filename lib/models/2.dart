class Two {
  final String name;
  final List<String> classes;

  Two({
    required this.name,
    required this.classes,
  });

  factory Two.fromJson(Map<String, dynamic> jsonTwo) {
    var classesFromJsonTwo = jsonTwo['classes'];
    List<String> classesListTwo = classesFromJsonTwo.cast<String>();

    return Two(
      name: jsonTwo['name'],
      classes: classesListTwo,
    );
  }
}
