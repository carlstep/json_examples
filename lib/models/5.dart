// ignore_for_file: public_member_api_docs, sort_constructors_first

class ClassFive {
  int id;
  String name;
  int level;

  ClassFive({
    required this.id,
    required this.name,
    required this.level,
  });

  factory ClassFive.fromJson(Map<String, dynamic> json) {
    return ClassFive(
      id: json['id'],
      name: json['name'],
      level: json['level'],
    );
  }
}

class Five {
  List<ClassFive> classes;

  Five({
    required this.classes,
  });

  factory Five.fromJson(List<dynamic> json) {
    List<ClassFive> classes = List<ClassFive>();
    classes = json.map((c) => ClassFive.fromJson(c)).toList();

    return Five(
      classes: classes,
    );
  }
}
