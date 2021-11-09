import 'package:my_pet/features/home/domain/entities/pet.entities.dart';

abstract class GetPets {
  Future<List<Pet>> get_pets();
}
