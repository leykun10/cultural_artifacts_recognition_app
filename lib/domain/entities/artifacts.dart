class Artifact {
  String? name;
  String? description;
  String? imagePath;
  List<int>?  coordinates;
  bool?  artifacts;

  Artifact({String? name, String? description, String? imagePath,List<int>? coordinates,required bool artifacts}) {
    this.name = name;
    this.description = description;
    this.imagePath = imagePath;
    this.coordinates = coordinates;
    this.artifacts= artifacts;
  }
}
