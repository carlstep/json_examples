// ignore_for_file: public_member_api_docs, sort_constructors_first

class PropertyThree {
  double width;
  double height;

  PropertyThree({
    required this.width,
    required this.height,
  });

  factory PropertyThree.fromJson(Map<String, dynamic> jsonThree) {
    return PropertyThree(
      width: jsonThree['width'],
      height: jsonThree['height'],
    );
  }
}

class Three {
  final int id;
  final String name;
  PropertyThree propertyThree;

  Three({
    required this.id,
    required this.name,
    required this.propertyThree,
  });

  factory Three.fromJson(Map<String, dynamic> jsonThree) {
    return Three(
      name: jsonThree['name'],
      id: jsonThree['id'],
      propertyThree: PropertyThree.fromJson(
        jsonThree['property'],
      ),
    );
  }
}
