import 'package:my_pet/features/home/domain/entities/pet.entities.dart';

class PetModel extends Pet {
  const PetModel({
    int? id,
    required String name,
    required int age,
    String? imageUri,
  }) : super(
          id: id,
          name: name,
          age: age,
          imageUri: imageUri,
        );

  factory PetModel.fromJson(Map<String, dynamic> json) {
    return PetModel(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      imageUri: json['imageUri'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'imageUri': imageUri,
    };
  }
}
