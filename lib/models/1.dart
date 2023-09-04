// ignore: file_names
class One {
  int id;
  String name;
  String gender;

  One({
    required this.id,
    required this.name,
    required this.gender,
  });

  factory One.fromJson(Map<String, dynamic> jsonOne) {
    return One(
      id: jsonOne['id'],
      name: jsonOne['name'],
      gender: jsonOne['gender'],
    );
  }
}
