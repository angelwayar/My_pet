import 'package:flutter/material.dart';
import 'package:my_pet/features/home/domain/entities/pet.entities.dart';

class ProfilePage extends StatelessWidget {
  final Pet pet;
  const ProfilePage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Se debería de poder editar directamente en esta página ??? o hacer otra para editar
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.network(pet.imageUri!),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              pet.name,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
