part of 'pet_form_bloc.dart';

abstract class PetFormEvent extends Equatable {
  const PetFormEvent();

  @override
  List<Object> get props => [];
}

class PetFormCreated extends PetFormEvent {}
