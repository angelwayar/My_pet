import 'package:equatable/equatable.dart';

class Pet extends Equatable {
  final int? id;
  final String name;
  final int age;
  final String? imageUri;

  const Pet({
    this.id,
    required this.name,
    required this.age,
    this.imageUri,
  });

  @override
  List<Object?> get props => [name, age];
}
