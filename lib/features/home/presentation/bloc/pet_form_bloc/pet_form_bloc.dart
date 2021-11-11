import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pet_form_event.dart';
part 'pet_form_state.dart';

class PetFormBloc extends Bloc<PetFormEvent, PetFormState> {
  PetFormBloc() : super(PetFormInitial()) {
    on<PetFormCreated>(_onPetFormCreated);
  }

  void _onPetFormCreated(PetFormCreated event, Emitter<PetFormState> emit) {
    emit(PetFormCreateInProgress());
  }
}
