part of 'pet_form_bloc.dart';

abstract class PetFormState extends Equatable {
  const PetFormState();
  
  @override
  List<Object> get props => [];
}

class PetFormInitial extends PetFormState {}

class PetFormCreateInProgress extends PetFormState {}
class PetFormCreateFailure extends PetFormState {}
class PetFormCreateSuccess extends PetFormState {}