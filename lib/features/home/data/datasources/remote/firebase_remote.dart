import 'package:my_pet/features/home/domain/entities/pet.entities.dart';

abstract class FirebaseRemoteDataSource {
  Future<List<Pet>> getPets();
}

class FirebaseRemoteDataSourceImp implements FirebaseRemoteDataSource {
  @override
  Future<List<Pet>> getPets() async {
    List<Pet> pet = [];
    return pet;
  }
}
