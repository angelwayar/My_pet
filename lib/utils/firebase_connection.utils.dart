import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_pet/features/home/domain/entities/pet.entities.dart';

abstract class FireBaseConnection {
  Future<dynamic> createPet(Pet pet);

  Future<dynamic> deletePet();

  Future<dynamic> getPet(int id);

  Future<dynamic> getPets();

  Future<dynamic> updatePet(Pet pet);
}

/// This class is the
class FireBaseConnectionImp implements FireBaseConnection {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future createPet(Pet pet) async {
    
  }

  @override
  Future deletePet() {
    // TODO: implement deletePet
    throw UnimplementedError();
  }

  @override
  Future getPet(int id) {
    // TODO: implement getPet
    throw UnimplementedError();
  }

  @override
  Future getPets() {
    // TODO: implement getPets
    throw UnimplementedError();
  }

  @override
  Future updatePet(Pet pet) {
    // TODO: implement updatePet
    throw UnimplementedError();
  }
}
